`import graphSearch from '../../../utils/graph-search'`

module 'graphSearch'

makeRectangle = (x,y,w,l) ->
  [x..(x+w)]
    .map (xi) -> [y..(y+l)].map (yi) -> [xi,yi]
    .reject ([xi,yi]) -> 0 < xi or xi < 5 and 0 < yi or yi < 5

somePaths = makeRectangle(0,0,5,6)
  .concat makeRectangle -3, 1, 7, 5
  .concat makeRectangle -1, -1, 5, 10
somePaths = _.flatten somePaths, true
somePaths = _.unique somePaths, false, (coord) -> coord.join(",")

successor = (x: x0, y: y0) ->
  boys = somePaths.filter ([x1, y1]) -> 
    x0 + 1 is x1 and y0 is y1 or
    x0 - 1 is x1 and y0 is y1
  girls = somePaths.filter ([x1, y1]) -> 
    x0 is x1 and y0 + 1 is y1 or
    x0 is x1 and y0 - 1 is y1
  boys.concat girls
    .map ([x,y]) -> x: x, y: y

stringify = (xs) ->
  xs
    .map (x: x, y: y) -> "[#{x}, #{y}]"
    .join(",")

# Replace this with your real tests.
test 'it works', ->
  result = graphSearch
  ok result

test 'the successor function should properly give successors', ->
  actual = successor(x: 0, y: 0)
  expected = [
    { x: 1, y: 0 }
    { x: -1, y: 0 }
    { x: 0, y: 1 }
    { x: 0, y: -1 }
  ]
  equal stringify(actual), stringify(expected)

test 'the graphSearch should find the solution', ->
  solution = graphSearch
    start:
      x: -1
      y: -1
    goal:
      x: 5
      y: 6
    successor: successor
  expected = [
    { x: -1, y: -1 }
    { x: 0, y: -1 }
    { x: 1, y: -1 }
    { x: 2, y: -1 }
    { x: 3, y: -1 }
    { x: 4, y: -1 }
    { x: 4, y: 0 }
    { x: 5, y: 0 }
    { x: 5, y: 1 }
    { x: 5, y: 2 }
    { x: 5, y: 3 }
    { x: 5, y: 4 }
    { x: 5, y: 5 }
    { x: 5, y: 6 }
  ]
  equal stringify(solution), stringify(expected)