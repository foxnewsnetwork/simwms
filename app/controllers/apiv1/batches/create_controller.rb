class Apiv1::Batches::CreateController < ApplicationController
  def create
    _creation_process.call _batch_params
  end
  private
  def _batch_params
    params.require(:batch).permit(:appointment_id, :tile_id, :permalink, :description, :quantity)
  end
  def _creation_process
    _new_batch >> _decide_validity >> (_output_success ^ _output_failure)
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
    Arrows.lift { |batch| batch.tap :save! }
  end
  def _render_out
    Arrows.lift { |batch| render json: { batch: batch } }
  end
  def _output_failure
    Arrows.lift { |batch| render json: batch.errors, status: :bad_request }
  end
end
