`import graphSearch from '../../../utils/graph-search'`
`import DebugEx from '../../../utils/debug-ex'`

module 'graphSearch'

defaultChildren = ([x0, y0]) ->
  [
    {x: x0+1, y: y0}
    {x: x0-1, y: y0}
    {x: x0, y: y0+1}
    {x: x0, y: y0-1}
  ]

successor = (nowAt, wasAt) ->
  {x: x0, y: y0} = nowAt
  {x: x1, y: y1} = wasAt if wasAt?
  defaultChildren([x0, y0]).reject (x:x, y:y) -> 
    x is x1 and y is y1

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
    { x: 5, y: -1 }
    { x: 5, y: 0 }
    { x: 5, y: 1 }
    { x: 5, y: 2 }
    { x: 5, y: 3 }
    { x: 5, y: 4 }
    { x: 5, y: 5 }
    { x: 5, y: 6 }
  ]
  equal stringify(solution), stringify(expected)