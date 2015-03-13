`import FunEx from '../../../utils/fun-ex'`

module 'FunEx'

# Replace this with your real tests.
test 'it works', ->
  result = FunEx
  ok result

test 'flip', ->
  f = (a,b) -> "#{b} before #{a}"
  g = FunEx.flip f
  actual = g "horse", "cart"
  original = f "horse", "cart"
  expected = "horse before cart"
  wrong = "cart before horse"
  equal actual, expected
  equal original, wrong

test 'reverse', ->
  f = (a,b,c,d) -> [a,b,c,d].join "->"
  g = FunEx.reverse f
  actual = g 1, 2, 3, 4
  expected = [4,3,2,1].join("->")
  original = f 1, 2, 3, 4
  wrong = [1,2,3,4].join("->")
  equal actual, expected
  equal original, wrong

test 'real world use case', ->
  setInt = FunEx.flip window.setTimeout
  stop()
  setInt 100, =>
    ok true
    start()