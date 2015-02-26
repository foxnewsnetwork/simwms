`import graphSearch from '../../../utils/graph-search'`
`import DebugEx from '../../../utils/debug-ex'`

module 'graphSearch'

defaultChildren = ([x0, y0]) ->
  [
    [x0+1, y0]
    [x0-1, y0]
    [x0, y0+1]
    [x0, y0-1]
  ]

successor = (nowAt, wasAt) ->
  [xz, yz] = wasAt if wasAt?
  defaultChildren(nowAt).reject ([x, y]) ->
    x is xz and y is yz

stringify = (xs) ->
  xs
    .map ([x, y]) -> "[#{x}, #{y}]"
    .join(",")

# Replace this with your real tests.
test 'it works', ->
  result = graphSearch
  ok result

test 'the successor function should properly give successors', ->
  actual = successor([0, 0])
  expected = [
    [1, 0]
    [-1, 0]
    [0, 1]
    [0, -1]
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
    [-1, -1]
    [0, -1]
    [1, -1]
    [2, -1]
    [3, -1]
    [4, -1]
    [5, -1]
    [5, 0]
    [5, 1]
    [5, 2]
    [5, 3]
    [5, 4]
    [5, 5]
    [5, 6]
  ]
  equal stringify(solution.reverse()), stringify(expected)