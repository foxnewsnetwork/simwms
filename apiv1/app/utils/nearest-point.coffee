`import Ember from 'ember'`
`import normalizePoint from './normalize-point'`

square = (x) -> x * x

nearestPoint = (points, point) ->
  [x0, y0] = normalizePoint point
  _.min points, (pts) ->
    [x1, y1] = normalizePoint pts
    square(x1 - x0) + square(y1 - y0)

`export default nearestPoint`
