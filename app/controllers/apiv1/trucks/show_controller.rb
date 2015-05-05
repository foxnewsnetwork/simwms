class Apiv1::Trucks::ShowController < ApplicationController
  def show
    render json: { warehouse: _warehouse.master_attributes }
  end
  private
  def _warehouse
    @warehouse ||= Apiv1::Tile.living_warehouses.find params[:id]
  end
end
