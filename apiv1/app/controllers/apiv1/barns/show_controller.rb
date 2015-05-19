class Apiv1::Barns::ShowController < ApplicationController
  def show
    render json: { barn: _barn }
  end
  private
  def _barn
    @barn ||= Apiv1::Tile.living_barns.find params[:id]
  end
end
