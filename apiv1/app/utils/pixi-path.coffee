`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import DebugEx from '../utils/debug-ex'`
`import manhattanPaths from '../utils/manhattan-paths'`
`import nearestPoint from '../utils/nearest-point'`
`import graphSearch from '../utils/graph-search'`
`import normalizePoint from './normalize-point'`
`import PixiPosition from './pixi-position'`

findClosestPointOnRoadFromPoint = (roads, point) ->
  nearestPoint roads, point

defaultChildren = ([x0, y0]) ->
  [
    [x0+1, y0]
    [x0-1, y0]
    [x0, y0+1]
    [x0, y0-1]
  ]

positionsOnPath = (grid, start, finish) ->
  graphSearch
    start: start
    goal: finish
    successor: (nowAt, wasAt) ->
      [x0, y0] = nowAt
      [xz, yz] = wasAt if wasAt?
      defaultChildren([x0, y0])      
        .reject ([x, y]) -> x is xz and y is yz
        .filter (coordinate) -> grid.isRoadTile coordinate

PixiPath = Ember.Object.extend
  speed: 1
  roadCoordinates: FunEx.computed "grid.roads.@each", ->
    @get("grid.roads").map normalizePoint

  untypedPositions: FunEx.computed "start.x", "start.y", "finish.x", "finish.y", "roadCoordinates", ->
    return unless @get("start")? and @get('finish')? and @get("roadCoordinates")? and @get("roadCoordinates.length") > 0
    return unless @get("start.x")? and @get("start.y")? and @get("finish.x")? and @get("finish.y")?
    start = normalizePoint @get("start")
    finish = normalizePoint @get("finish")
    startPointOnRoad = findClosestPointOnRoadFromPoint @get("roadCoordinates"), start
    finishPointOnRoad = findClosestPointOnRoadFromPoint @get("roadCoordinates"), finish
    [p1..., crap] = manhattanPaths start, startPointOnRoad
    p2 = positionsOnPath(@get("grid"), startPointOnRoad, finishPointOnRoad)
    [crap, p3...] = manhattanPaths finishPointOnRoad, finish

    DebugEx.l p1.concat(p2.reverse()).concat(p3)
    
  positions: FunEx.computed "untypedPositions.@each", ->
    return if Ember.isBlank @get("untypedPositions")
    @get("untypedPositions")
      .map ([x,y]) -> PixiPosition.create x:x, y:y

`export default PixiPath`
