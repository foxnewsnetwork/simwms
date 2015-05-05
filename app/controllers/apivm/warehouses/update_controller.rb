class Apivm::Warehouses::UpdateController < ApplicationController
  def update
    _warehouse.update _warehouse_params
    render json: { warehouse: _warehouse.master_attributes }
  end
  private
  def _warehouse_params
    params.require(:warehouse).permit :fire_id
  end
  def _warehouse
    @warehouse ||= Apiv1::Tile.living_warehouses.find params[:id]
  end
end
