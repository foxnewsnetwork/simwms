class Apiv1::Batches::CreateController < ApplicationController
  def create
    _creation_process.call _batch_params
  end
  private
  def _batch_params
    params.require(:batch).permit :weighticket_id,
      :appointment_id,
      :warehouse_id,
      :permalink,
      :description,
      :quantity,
      :entry_dock_id,
      :exit_dock_id
  end
  def _files_params
    params.require(:batch).permit files: []
  end
  def _pictures_params
    (_files_params[:files] || []).map { |file| { pic: file } }
  end
  def _creation_process
    _infer_defaults >> _new_batch >> _decide_validity >> (_output_success ^ _output_failure)
  end
  def _new_batch
    Arrows.lift { |p| Apiv1::Batch.new p}
  end
  def _decide_validity
    Arrows.polarize &:valid?
  end
  def _output_success
    _persist >> 
    _attempt_pictures >>
    _render_out
  end
  def _attempt_pictures
    Arrows.lift do |batch|
      batch.pictures.create! _pictures_params
      batch
    end
  end
  def _persist
    Arrows.lift { |batch| batch.tap &:save! }
  end
  def _render_out
    Arrows.lift { |batch| render json: batch.ember_json }
  end
  def _output_failure
    Arrows.lift { |batch| render json: batch.errors, status: :bad_request }
  end
  def _infer_defaults
    Arrows.lift { |p| Apiv1::Batches::CreateController::Defaulter.fill_defaults p }
  end
end

class Apiv1::Batches::CreateController::Defaulter
  def self.fill_defaults(params)
    new(params).defaults
  end

  def initialize(params)
    @params = params
  end

  def defaults
    @params[:appointment_id] = _appointment_id
    @params[:warehouse_id] = _warehouse_id
    @params
  end

  private
  def _warehouse_id
    return @params[:warehouse_id] if @params[:warehouse_id].present? && _is_slot_empty?(@params[:warehouse_id])
     _first_empty_warehouse.id
  end
  def _is_slot_empty?(id)
    Apiv1::Warehouse.find_by_id(id).try :not_full?
  end
  def _appointment_id
    return @params[:appointment_id] if @params[:appointment_id].present?
    _weighticket.appointment_number
  end
  def _weighticket
    Apiv1::Weighticket.find @params[:weighticket_id]
  end
  def _first_empty_warehouse
    Apiv1::Warehouse.empty_warehouse.limit(1).first
  end
end
