class Apiv1::Batches::IndexController < ApplicationController
  def index
    render json: { batches: _batches }
  end
  private
  def _search_filters
    Arrows::ID
  end

  def _batches
    _search_filters.call _default_scope
  end

  def _default_scope
    if params[:warehouse_id].present?
      Apiv1::Warehouse.find(params[:warehouse_id]).batches
    else
      Apiv1::Batch
    end
  end
end
