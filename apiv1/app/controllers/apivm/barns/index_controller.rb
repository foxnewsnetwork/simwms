class Apivm::Barns::IndexController < ApplicationController
  def index
    render json: { barns: _barns.map(&:master_attributes) }
  end
  private
  def _barns
    @barns ||= Apiv1::Tile.living_barns
  end
end
