`import PixiPath from '../../../utils/pixi-path'`
`import PixiGrid from '../../../utils/pixi-grid'`
module 'PixiPath'

normalizeFormat = (point) ->
  switch
    when point instanceof Ember.Object
      x0 = point.get("tileX") or point.get("x") 
      y0 = point.get("tileY") or point.get("y") 
      throw "Ember.Object" unless x0? and y0?
    when point instanceof Array
      [x0, y0] = point
      throw "Array" unless x0? and y0?
    when point instanceof Object
      {x: x0, y: y0} = point
      throw "Object" unless x0? and y0?
    else throw "WOW FUCK YOU"
  [x0, y0]

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
  for y in [10..-10]
    row = "#{Math.abs y}: "
    for x in [-10..10]
      a = paths.find (point) -> 
        [xp, yp] = normalizeFormat point
        x is xp and y is yp
      if a?
        row += "###"
      else
        row += "---"
    console.log row

logPaths somePaths

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
  logPaths path.get("positions")
  ok path.get("positions")
