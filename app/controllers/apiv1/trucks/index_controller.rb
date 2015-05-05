class Apiv1::Trucks::IndexController < ApplicationController
  def index
    render json: { warehouses: _warehouses.map(&:master_attributes) }
  end
  private
  def _warehouses
    @warehouses ||= Apiv1::Tile.living_warehouses
  end
end
