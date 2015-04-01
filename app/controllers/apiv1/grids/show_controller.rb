class Apiv1::Grids::ShowController < ApplicationController
  def show
    render json: { 
      grid: _grid_hash,
      barns: _barns,
      roads: _roads,
      warehouses: _warehouses.map(&:ember_attributes),
      scales: _scales,
      stations: _stations 
    }
  end
  private
  def _grid_hash
    {
      id: _version,
      barns: _barns.map(&:id),
      roads: _roads.map(&:id),
      warehouses: _warehouses.map(&:id),
      scales: _scales.map(&:id),
      stations: _stations.map(&:id)
    }
  end
  def _version
    (_barns + _roads + _warehouses + _scales + _stations).map(&:id).sort.last
  end
  def _barns
    @barns ||= Apiv1::Tile.living_barns
  end
  def _warehouses
    @warehouses ||= Apiv1::Warehouse.living_warehouses
  end
  def _roads
    @roads ||= Apiv1::Tile.living_roads
  end
  def _scales
    @scales ||= Apiv1::Tile.living_scales
  end
  def _stations
    @stations ||= Apiv1::Tile.living_stations
  end
end
