class Apiv1::Batches::DestroyController < ApplicationController
  def destroy
    _batch.try :destroy
    render json: null, status: :ok
  end
  private
  def _batch
    Apiv1::Batch.find_by_id params[:id]
  end
end
