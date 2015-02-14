`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import DebugEx from '../utils/debug-ex'`
`import manhattanPaths from '../utils/manhattan-paths'`
`import nearestPoint from '../utils/nearest-point'`
`import graphSearch from '../utils/graph-search'`
`import normalizePoint from './normalize-point'`

findClosestPointOnRoadFromPoint = (roads, point) ->
  nearestPoint roads, point

defaultChildren = ([x0, y0]) ->
  [
    {x: x0+1, y: y0}
    {x: x0-1, y: y0}
    {x: x0, y: y0+1}
    {x: x0, y: y0-1}
  ]

positionsOnPath = (grid, start, finish) ->
  graphSearch
    start: start
    goal: finish
    successor: (nowAt, wasAt) ->
      [x0, y0] = normalizePoint nowAt
      [xz, yz] = normalizePoint wasAt if wasAt?
      defaultChildren([x0, y0])      
        .reject (x:x, y:y) -> x is xz and y is yz
        .filter (coordinate) -> grid.isRoadTile coordinate

PixiPath = Ember.Object.extend
  speed: 1
  positions: FunEx.computed "start.x", "start.y", "finish.x", "finish.y", "grid.roads", ->
    return [] unless @get("start")? and @get('finish')? and @get("grid.roads")?
    startPointOnRoad = findClosestPointOnRoadFromPoint @get("grid.roads"), @get("start")
    finishPointOnRoad = findClosestPointOnRoadFromPoint @get("grid.roads"), @get("finish")

    manhattanPaths @get("start"), startPointOnRoad
    .concat positionsOnPath(@get("grid"), startPointOnRoad, finishPointOnRoad)
    .concat manhattanPaths finishPointOnRoad, @get("finish")

`export default PixiPath`
