class AddTiles < SeedMigration::Migration
  def up
    Apiv1::Tile.create! all_tiles
  end

  def down
    all_tiles.map do |tile|
      { x: tile.x, y: tile.y, tile_type: tile_type, tile_name: tile_name }
    end.each do |param|
      Apiv1::Tile.destroy_all(param)
    end
  end
  private
  def all_tiles
    @tiles ||= barns + roads + warehouses + stations + scales
  end

  def inject_type(type, xs)
    xs.map do |x|
      x[:tile_type] = type
      x
    end.map!.with_index do |tile, i|
      tile[:tile_name] = i
      tile
    end 
  end

  def barns
    tiles = (2..12).map { |k| { x: -2, y: k, status: "okay" } } + 
    (6..11).map { |k| { x: 2, y: k, status: "okay" } }
    inject_type :barn, tiles
  end

  def roads
    tiles = (1..12).map { |k| { x: 0, y: k, z: -0.25 } } + 
    (1..8).map { |k| { x: k, y: 12, z: -0.25 } } +
    (1..12).map { |k| { x: 8, y: k, z: -0.25 } }
    inject_type :road, tiles
  end

  def warehouses
    tiles = (3..6).to_a.product( (4..11).to_a ).map { |(x,y)| { x: x, y: y } } +
    (2..12).map { |k| { x: -3, y: k } }
    inject_type :warehouse, tiles
  end

  def stations
    tiles = [{x: -1, y: 0}, {x: 7, y: 0}]
    inject_type :station, tiles
  end

  def scales
    tiles = [{x: 0, y: 0}, {x: 8, y: 0}]
    inject_type :scale, tiles
  end
end
