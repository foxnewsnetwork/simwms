class Apivm::Warehouses::IndexController < ApplicationController
  def index
    render json: { warehouses: _warehouses.map(&:master_attributes) }
  end
  private
  def _warehouses
    @warehouses ||= Apiv1::Warehouse.all
  end
end
