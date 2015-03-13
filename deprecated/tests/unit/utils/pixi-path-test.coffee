`import PixiPath from '../../../utils/pixi-path'`
`import PixiGrid from '../../../utils/pixi-grid'`
`import PixiPosition from '../../../utils/pixi-position'`
`import normalizePoint from '../../../utils/normalize-point'`
module 'PixiPath'

simplify = ([x,y]) ->
  x: x
  y: y

unwrap = (xs) -> _.flatten xs, true

makeRectangle = (x,y,w,l) ->
  pts = unwrap [x..(x+w)].map (xi) -> [y..(y+l)].map (yi) -> [xi,yi]
  pts.filter ([xi,yi]) -> (xi is x or xi is (x+w)) or (yi is y or yi is (y+l))

somePaths = makeRectangle -8, -8, 4, 4
  .concat makeRectangle -5, -5, 4, 4
  .concat makeRectangle -3, -3, 4, 4
  .concat makeRectangle -1, -1, 4, 4
  .concat makeRectangle 1, 1, 4, 4
  .concat makeRectangle 3, 3, 4, 4
  .concat makeRectangle 5, 5, 4, 4
somePaths = _.unique somePaths, false, (coord) -> coord.join(",")

grid = PixiGrid.create
  roads: somePaths.map simplify

logPaths = (paths) ->
  for y in [13..-1]
    row = "#{Math.abs y}: "
    for x in [-1..13]
      a = paths.find (point) -> 
        [xp, yp] = normalizePoint point
        x is xp and y is yp
      if a?
        row += "###"
      else
        row += "---"
    console.log row

test 'it is okay', ->
  ok PixiPath

test 'path positions', ->
  path = PixiPath.create
    start:
      x: -8
      y: -8
    finish:
      x: 9
      y: 9
    grid: grid
  ok path.get("positions")
  ok path.get("positions.length") > 4

test 'real application', ->
  roads = [1..12].map (k) -> PixiPosition.create(x: 0, y: k)
  moreRoads = [1..8].map (k) -> PixiPosition.create(x: k, y: 12)
  outRoads = [2..12].map (k) -> PixiPosition.create(x: 8, y: k)
  roadNetwork = moreRoads.concat(roads).concat outRoads
  grid = PixiGrid.create
    roads: roadNetwork
  path = PixiPath.create
    speed: 1
    start:
      x: 0
      y: 1
    finish:
      x: 8
      y: 12
    grid: grid
  logPaths roadNetwork
  logPaths path.get("positions")
  ok path.get("positions")
  ok path.get("positions.length") > 4