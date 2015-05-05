class Apiv1::Trucks::CreateController < ApplicationController
  def create
    render json: { warehouses: _warehouse.master_attributes }
  end
  private
  def _create_params
    params.require(:warehouse).permit :fire_id
  end
  def _warehouse_params
    _create_params.merge tile_type: :warehouse
  end
  def _warehouse
    @warehouse ||= Apiv1::Tile.create! _warehouse_params
  end
end
