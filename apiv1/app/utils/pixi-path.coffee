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

manpaths = (p1, p2) ->
  manhattanPaths normalizePoint(p1), normalizePoint(p2)

PixiPath = Ember.Object.extend
  speed: 1
  untypedPositions: FunEx.computed "start.x", "start.y", "finish.x", "finish.y", "grid.roads", ->
    return unless @get("start")? and @get('finish')? and @get("grid.roads")?
    return unless @get("start.x")? and @get("start.y")? and @get("finish.x")? and @get("finish.y")?
    start = normalizePoint @get("start")
    finish = normalizePoint @get("finish")
    startPointOnRoad = findClosestPointOnRoadFromPoint @get("grid.roads"), start
    finishPointOnRoad = findClosestPointOnRoadFromPoint @get("grid.roads"), finish
    [p1..., crap] = manhattanPaths start, startPointOnRoad
    p2 = positionsOnPath(@get("grid"), startPointOnRoad, finishPointOnRoad)
    [crap, p3...] = manhattanPaths finishPointOnRoad, finish
    
    p1.concat(p2).concat(p3)
    
  positions: FunEx.computed "untypedPositions.@each", ->
    return if Ember.isBlank @get("untypedPositions")
    @get("untypedPositions")
      .map normalizePoint
      .map ([x,y]) -> PixiPosition.create x:x, y:y

`export default PixiPath`
