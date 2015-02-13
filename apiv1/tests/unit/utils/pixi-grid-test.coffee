`import PixiGrid from '../../../utils/pixi-grid'`
`import PixiPosition from '../../../utils/pixi-position'`

module 'PixiGrid'

barns = [2..12].map (k) -> PixiPosition.create(tileX: -1, tileY: k)
roads = [1..12].map (k) -> PixiPosition.create(tileX: 0, tileY: k)
warehouses = [2..12].map (k) -> PixiPosition.create(tileX: -2, tileY: k)

simplify = (position) ->
  x: position.get('tileX')
  y: position.get('tileY')

grid = PixiGrid.create
  barns: barns.map simplify
  roads: roads.map simplify
  warehouses: warehouses.map simplify

# Replace this with your real tests.
test 'it works', ->
  result = PixiGrid
  ok result

test 'road tiles', ->
  for y in [1..12]
    equal grid.tileTypeAt(x: 0, y: y), "road"
    ok grid.isRoadTile(x: 0, y: y)

test 'barn tiles', ->
  for y in [2..12]
    equal grid.tileTypeAt(x: -1, y: y), "barn"

test 'warehouse tiles', ->
  for y in [2..12]
    equal grid.tileTypeAt(x: -2, y: y), "warehouse"

test 'grass tiles', ->
  for y in [-4...1]
    for x in [-5..5]
      equal grid.tileTypeAt(x: x, y: y), "grass"