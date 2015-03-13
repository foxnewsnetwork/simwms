`import manhattanPaths from '../../../utils/manhattan-paths'`

module 'manhattanPaths'

stringify = (coordinates) ->
  coordinates
    .map (coordinate) -> "[" + coordinate.join(",") + "]"
    .join(",")

# Replace this with your real tests.
test 'it works', ->
  result = manhattanPaths
  ok result

test 'the null path', ->
  positions = manhattanPaths [0,0], [0,0]
  actual = stringify positions
  expected = stringify [[0,0]]
  equal actual, expected

test 'it should generate the tiles of a manhattan distance', ->
  positions = manhattanPaths [0,0], [4,4]
  actual = stringify positions
  expected = stringify [[0,0],[1,0],[2,0],[3,0],[4,0],[4,1],[4,2],[4,3],[4,4]]
  equal actual, expected

test 'given shoddy negative numbers, it should still work', ->
  positions = manhattanPaths [-3, 3], [1,-1]
  actual = stringify positions
  equal actual, "[-3,3],[-2,3],[-1,3],[0,3],[1,3],[1,2],[1,1],[1,0],[1,-1]" 

test 'given shitty input, it should give []', ->
  answer = manhattanPaths [-2,4]
  equal answer.join(""), [].join("")