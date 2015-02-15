`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import PixiCamera from '../utils/pixi-camera'`
`import PixiPosition from '../utils/pixi-position'`
`import PixiPath from '../utils/pixi-path'`
`import PixiGrid from '../utils/pixi-grid'`
`import DebugEx from '../utils/debug-ex'`

unwrap = (xs) -> _.flatten xs, true
product = (xs,ys) ->
  unwrap xs.map (x) -> ys.map (y) -> [x,y]

barns = [2..12].map (k) -> PixiPosition.create(x: -2, y: k)
roads = [1..12].map (k) -> PixiPosition.create(x: 0, y: k, constant: -0.25)
moreRoads = [1..8].map (k) -> PixiPosition.create(x: k, y: 12, constant: -0.25)
outRoads = [2..12].map (k) -> PixiPosition.create(x: 8, y: k, constant: -0.25)
rightBarns = [6..11].map (k) -> PixiPosition.create(x: 2, y: k)
warehouses = product([3..5], [4..11]).map ([x,y]) -> PixiPosition.create x: x, y: y
moreWarehouses = [2..12].map (k) -> PixiPosition.create(x: -3, y: k)
roadNetwork = moreRoads.concat(roads).concat outRoads

grid = PixiGrid.create
  barns: barns.concat(rightBarns)
  roads: roadNetwork
  warehouses: warehouses.concat(moreWarehouses)

path = PixiPath.create
  speed: 1
  start:
    x: 0
    y: 1
  finish:
    x: 8
    y: 10
  grid: grid

ApplicationController = Ember.Controller.extend
  camera: PixiCamera.create(x: 250, y: 280, zoom: 0.8)
  grid: grid
  path: path
  markerPosition: PixiPosition.create(x: 0, y: 1)
  actions:
    goLeft: ->
      @decrementProperty "camera.x", 10
    goRight: ->
      @incrementProperty "camera.x", 10
  
`export default ApplicationController`
