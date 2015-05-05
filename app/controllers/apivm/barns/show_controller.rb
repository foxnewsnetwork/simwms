class Apivm::Barns::ShowController < ApplicationController
  def show
    render json: { barn: _barn.master_attributes }
  end
  private
  def _barn
    @barn ||= Apiv1::Tile.living_barns.find params[:id]
  end
end
