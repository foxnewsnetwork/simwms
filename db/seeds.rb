# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# def inject_type(type, xs)
#   xs.map do |x|
#     x[:tile_type] = type
#     x
#   end
# end

# tiles = (2..12).map { |k| { x: -2, y: k, status: "okay" } } + 
#   (6..11).map { |k| { x: 2, y: k, status: "okay" } }
# barns = inject_type :barn, tiles

# tiles = (1..12).map { |k| { x: 0, y: k, z: -0.25 } } + 
#   (1..8).map { |k| { x: k, y: 12, z: -0.25 } } +
#   (1..12).map { |k| { x: 8, y: k, z: -0.25 } }
# roads = inject_type :road, tiles

# tiles = (3..6).to_a.product( (4..11).to_a ).map { |(x,y)| { x: x, y: y } } +
#   (2..12).map { |k| { x: -3, y: k } }
# warehouses = inject_type :warehouse, tiles

# tiles = [{x: -1, y: 0}, {x: 7, y: 0}]
# stations = inject_type :station, tiles

# tiles = [{x: 0, y: 0}, {x: 8, y: 0}]
# scales = inject_type :scale, tiles

# Apiv1::Tile.create! barns + roads + warehouses + stations + scales

["manager", "dockworker", "scalemaster", "logistics"].map do |role|
  {
    role: role,
    email: "#{role}@test.co",
    password: "asdf123"
  }
end.map do |slug|
  Apiv1::User.create! slug
end