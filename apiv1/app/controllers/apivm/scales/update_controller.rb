class Apivm::Scales::UpdateController < ApplicationController
  def update
    _scale.update _scale_params
    render json: { scale: _scale.master_attributes }
  end
  private
  def _scale_params
    params.require(:scale).permit :fire_id
  end
  def _scale
    @scale ||= Apiv1::Tile.living_scales.find params[:id]
  end
end
