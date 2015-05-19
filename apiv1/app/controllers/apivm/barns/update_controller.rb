class Apivm::Barns::UpdateController < ApplicationController
  def update
    _barn.update _barn_params
    render json: { barn: _barn.master_attributes }
  end
  private
  def _barn_params
    params.require(:barn).permit :fire_id
  end
  def _barn
    @barn ||= Apiv1::Tile.living_barns.find params[:id]
  end
end
