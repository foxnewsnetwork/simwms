class Apiv1::Batches::IndexController < ApplicationController
  def index
    render json: { batches: _batches }
  end
  private
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
