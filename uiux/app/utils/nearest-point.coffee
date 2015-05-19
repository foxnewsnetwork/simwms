`import Ember from 'ember'`
`import DebugEx from '../utils/debug-ex'`

square = (x) -> x * x

min = (points, quantify) ->
  index = points
  .map (point, index) -> [quantify(point), index]
  .sort ([a, unusedA], [b, unusedB]) -> a - b
  .objectAt(0)
  .objectAt(1)
  points.objectAt index

nearestPoint = (points, point) ->
  [x0, y0] = point
  min points, (pts) ->
    [x1, y1] = pts
    square(x1 - x0) + square(y1 - y0)

`export default nearestPoint`
