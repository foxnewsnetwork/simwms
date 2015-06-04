class Apiv1::Batches::IndexController < ApplicationController
  def index
    render json: _batches_json
  end
  private
  def _batches_json
    _batches.inject({batches: [], pictures: []}) do |hash, batch|
      batch_json, picture_jsons = batch.ember_json.values_at :batch, :pictures
      hash[:batches].push batch_json
      hash[:pictures] += picture_jsons
      hash
    end
  end
  def _search_params
    params.permit :warehouse_id, :per, :page, ids: []
  end

  def _search_filters(scope)
    scope = scope.where id: _search_params[:ids] if _search_params[:ids].present?
    scope
  end

  def _batches
    _search_filters _default_scope
  end

  def _default_scope
    if params[:warehouse_id].present?
      Apiv1::Warehouse.find(params[:warehouse_id]).batches
    else
      Apiv1::Batch.order id: :desc
    end
  end
end
