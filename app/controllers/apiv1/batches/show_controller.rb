class Apiv1::Batches::ShowController < ApplicationController
  def show
    render json: { batch: _batch }
  end
  private
  def _batch
    Apiv1::Batch.find params[:id]
  end
end
