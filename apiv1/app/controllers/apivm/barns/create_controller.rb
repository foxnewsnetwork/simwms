class Apivm::Barns::CreateController < ApplicationController
  def create
    render json: { barns: _barn.master_attributes }
  end
  private
  def _create_params
    params.require(:barn).permit :fire_id
  end
  def _barn_params
    _create_params.merge tile_type: :barn
  end
  def _barn
    @barn ||= Apiv1::Tile.create! _barn_params
  end
end
