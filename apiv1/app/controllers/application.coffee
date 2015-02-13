`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import PixiCamera from '../utils/pixi-camera'`
`import PixiPosition from '../utils/pixi-position'`
`import PixiPath from '../utils/pixi-path'`
`import PixiGrid from '../utils/pixi-grid'`

# Given [1,2,3] * ["a", "b"] = [[1,"a"], [1, "b"], [2, "a"], ...]
unwrap = (xs) -> _.flatten xs, true
product = (xs,ys) ->
  unwrap xs.map (x) -> ys.map (y) -> [x,y]

barns = [2..12].map (k) -> PixiPosition.create(tileX: -1, tileY: k)
roads = [1..12].map (k) -> PixiPosition.create(tileX: 0, tileY: k, constant: -0.25)
moreRoads = [1..8].map (k) -> PixiPosition.create(tileX: k, tileY: 12, constant: -0.25)
outRoads = [2..12].map (k) -> PixiPosition.create(tileX: 8, tileY: k, constant: -0.25)
rightBarns = [6..11].map (k) -> PixiPosition.create(tileX: 1, tileY: k)
warehouses = product([2..4], [4..11]).map ([x,y]) -> PixiPosition.create tileX: x, tileY: y
moreWarehouses = [2..12].map (k) -> PixiPosition.create(tileX: -2, tileY: k)
roadNetwork = moreRoads.concat roads.concat outRoads

grid = PixiGrid.create
  barns: barns.concat(rightBarns)
  roads: roadNetwork
  warehouses: warehouses.concat(moreWarehouses)

path = PixiPath.create
  start:
    x: 0
    y: 1
  finish:
    x: -1
    y: 10
  grid: grid

ApplicationController = Ember.Controller.extend
  camera: PixiCamera.create(x: 250, y: 280, zoom: 0.8)
  grid: grid
  path: path
  markerPosition: PixiPosition.create(tileX: 0, tileY: 1)
  actions:
    goLeft: ->
      @decrementProperty "camera.x", 10
    goRight: ->
      @incrementProperty "camera.x", 10
  
`export default ApplicationController`
