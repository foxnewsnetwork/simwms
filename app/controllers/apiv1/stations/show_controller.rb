class Apiv1::Stations::ShowController < ApplicationController
  def show
    render json: { station: _station }
  end
  private
  def _station
    @station ||= Apiv1::Tile.living_stations.find params[:id]
  end
end
