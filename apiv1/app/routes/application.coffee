`import Ember from 'ember'`
`import PixiCamera from '../utils/pixi-camera'`
`import PixiPosition from '../utils/pixi-position'`
`import PixiPath from '../utils/pixi-path'`
`import PixiGrid from '../utils/pixi-grid'`
unwrap = (xs) -> _.flatten xs, true
product = (xs,ys) ->
  unwrap xs.map (x) -> ys.map (y) -> [x,y]

barns = [2..12].map (k) -> PixiPosition.create(x: -2, y: k)
roads = [1..12].map (k) -> PixiPosition.create(x: 0, y: k, constant: -0.25)
moreRoads = [1..8].map (k) -> PixiPosition.create(x: k, y: 12, constant: -0.25)
outRoads = [1..12].map (k) -> PixiPosition.create(x: 8, y: k, constant: -0.25)
rightBarns = [6..11].map (k) -> PixiPosition.create(x: 2, y: k)
warehouses = product([3..6], [4..11]).map ([x,y]) -> PixiPosition.create x: x, y: y
moreWarehouses = [2..12].map (k) -> PixiPosition.create(x: -3, y: k)
roadNetwork = moreRoads.concat(roads).concat outRoads
stations = [PixiPosition.create(x: -1, y: 0), PixiPosition.create(x: 7, y: 0)]
scales = [PixiPosition.create(x: 0, y: 0), PixiPosition.create(x: 8, y: 0)]
grid = PixiGrid.create
  barns: barns.concat(rightBarns)
  roads: roadNetwork
  warehouses: warehouses.concat(moreWarehouses)
  stations: stations
  scales: scales
  truck: PixiPosition.create(x: 0, y: 1, constant: 0.25)

path = PixiPath.create
  speed: 1
  start:
    x: 0
    y: 1
  finish:
    x: 8
    y: 10
  grid: grid

ApplicationRoute = Ember.Route.extend
  model: ->
    camera: PixiCamera.create(x: 250, y: 280, zoom: 0.8)
    grid: grid
    path: path
  actions:
    openModal: (modalName, model) ->
      if model?
        id = Ember.get(model, "id")
        id ||= model
        @transitionTo modalName, id
      else
        @transitionTo modalName
    closeModal: ->
      @transitionTo "index"
    newTruck: ->
      @transitionTo "index"

`export default ApplicationRoute`
