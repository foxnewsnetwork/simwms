class Apiv2::TilesController < ApplicationController

  def show
    render json: _tile.ember_json
  end
  def index
    render json: _combine(_tiles.map(&:ember_json))
  end
  def update
    if _tile.update _tile_params
      show
    else
      render json: _tile.errors
    end
  end
  def create
    if _tile.valid? && _tile.save
      show
    else
      render json: _tile.errors
    end
  end
  def destroy
    if _tile.destroy
      show
    else
      render json: _tile.errors
    end
  end
  private
  def _tiles
    Apiv1::Tile.all
  end
  def _tile
    @tile ||= Apiv1::Tile.find params[:id] if params.has_key?(:id)
    @tile ||= Apiv1::Tile.new(_tile_params)
  end
  def _tile_params
    params.require(:tile).permit :tile_type, :tile_name, :status, :x, :y, :z, :fire_id, :width, :height
  end
  def _combine(tile_jsons)
    tile_jsons.reduce({tiles: [], cameras: []}) do |hash, tile_json|
      hash[:tiles].push tile_json[:tile]
      hash[:cameras] += tile_json[:cameras]
      hash
    end
  end
end