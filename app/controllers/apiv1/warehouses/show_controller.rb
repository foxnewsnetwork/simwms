class Apiv1::Warehouses::ShowController < ApplicationController
  def show
    render json: { warehouse: _warehouse.ember_attributes }
  end
  private
  def _warehouse
    @warehouse ||= Apiv1::Warehouse.find params[:id]
  end
end
