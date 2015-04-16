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
    _persist >> _render_out
  end
  def _persist
    Arrows.lift { |batch| batch.tap &:save! }
  end
  def _render_out
    Arrows.lift { |batch| render json: { batch: batch } }
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
    @params[:warehouse_id] || _first_empty_warehouse.id
  end
  def _appointment_id
    @params[:appointment_id] || _weighticket.appointment_number
  end
  def _weighticket
    Apiv1::Weighticket.find @params[:weighticket_id]
  end
  def _first_empty_warehouse
    Apiv1::Warehouse.empty_warehouse.limit(1).first
  end
end
