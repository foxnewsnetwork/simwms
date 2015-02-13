`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import manhattanPaths from '../utils/manhattan-paths'`
`import nearestPoint from '../utils/nearest-point'`
`import graphSearch from '../utils/graph-search'`

findClosestPointOnRoadFromPoint = (roads, point) ->
  nearestPoint roads, point

positionsOnPath = (grid, start, finish) ->
  graphSearch
    start: start
    goal: finish
    successor: (x: x0, y: y0) ->
      children = [
        {x: x0+1, y: y0}
        {x: x0-1, y: y0}
        {x: x0, y: y0+1}
        {x: x0, y: y0-1}
      ]
      children.filter (coordinate) -> grid.isRoadTile coordinate

PixiPath = Ember.Object.extend
  positions: FunEx.computed "start.x", "start.y", "finish.x", "finish.y", "grid.roads", ->
    return [] unless @get("start")? and @get('finish')? and @get("grid.roads")?
    startPointOnRoad = findClosestPointOnRoadFromPoint @get("grid.roads"), @get("start")
    finishPointOnRoad = findClosestPointOnRoadFromPoint @get("grid.roads"), @get("finish")

    manhattanPaths @get("start"), startPointOnRoad
      .concat positionsOnPath(@get("grid"), startPointOnRoad, finishPointOnRoad)
      .concat manhattanPaths finishPointOnRoad, @get("finish")

`export default PixiPath`
