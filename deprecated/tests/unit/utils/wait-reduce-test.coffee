`import waitReduce from '../../../utils/wait-reduce'`

module 'waitReduce'

# Replace this with your real tests.
test 'it works', ->
  result = waitReduce
  ok result

test 'should reduce down to a normal reduce', ->
  stop()
  promise = waitReduce [1,2,3,4], 0, 0, (sum, n) -> sum + n
  expected = 10
  promise.then (actual) ->
    equal actual, expected
    start()

test 'it should happen in the correct order', ->
  stop()
  promise = waitReduce ["el", "psy", "congroo"], "okabe:", 25, (passphrase, key) -> [passphrase, key].join " "
  expected = "okabe: el psy congroo"
  promise.then (actual) ->
    equal actual, expected
    start()