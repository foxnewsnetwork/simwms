class Apivm::Scales::CreateController < ApplicationController
  def create
    render json: { scales: _scale.master_attributes }
  end
  private
  def _create_params
    params.require(:scale).permit :fire_id
  end
  def _scale_params
    _create_params.merge tile_type: :scale
  end
  def _scale
    @scale ||= Apiv1::Tile.create! _scale_params
  end
end
