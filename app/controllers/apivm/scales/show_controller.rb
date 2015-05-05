class Apivm::Scales::ShowController < ApplicationController
  def show
    render json: { scale: _scale.master_attributes }
  end
  private
  def _scale
    @scale ||= Apiv1::Tile.living_scales.find params[:id]
  end
end
