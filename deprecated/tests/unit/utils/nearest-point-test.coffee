`import nearestPoint from '../../../utils/nearest-point'`

module 'nearestPoint'

unwrap = (xss) -> _.flatten xss, true

# Replace this with your real tests.
test 'it works', ->
  result = nearestPoint
  ok result

test 'it should finding the nearest point', ->
  points = unwrap [-3..3].map (x) -> [0..5].map (y) -> [x,y]
  point = [6,8]
  expected = [3,5]
  actual = nearestPoint points, point
  equal actual.toString(), expected.toString()

test 'repeat', ->
  points = unwrap [-3..3].map (x) -> [-3..3].map (y) -> [x,y]
  point = [5,0]
  expected = [3, 0]
  actual = nearestPoint points, point
  equal actual.toString(), expected.toString()

test 'given multiple solutions, it should return the last one', ->
  hollow = ([x,y]) -> x < 3 and x > -3 and y < 3 and y > -3
  hollowFilter = (xs) -> xs.reject hollow
  points = hollowFilter unwrap [-3..3].map (x) -> [-3..3].map (y) -> [x,y]
  point = [0,0]
  expected = [-3,0]
  actual = nearestPoint points, point
  equal actual.toString(), expected.toString()