class Apivm::Scales::IndexController < ApplicationController
  def index
    render json: { scales: _scales.map(&:master_attributes) }
  end
  private
  def _scales
    @scales ||= Apiv1::Tile.living_scales
  end
end
