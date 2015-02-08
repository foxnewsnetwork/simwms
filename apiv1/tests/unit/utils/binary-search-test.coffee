`import binarySearch from '../../../utils/binary-search'`

module 'binarySearch'
comp = (x) -> x
xs = [0..99]

# Replace this with your real tests.
test 'it works', ->
  x = 5  
  result = binarySearch xs, x, comp
  equal result, 5

test 'edge cases 0', ->
  x = 0
  result = binarySearch xs, x, comp
  equal result, 0

test 'edge cases 9', ->
  x = 9
  result = binarySearch xs, x, comp
  equal result, 9

test 'edge cases 2', ->
  x = 2
  result = binarySearch xs, x, comp
  equal result, 2

test 'edge cases 999', ->
  x = 999
  result = binarySearch xs, x, comp
  equal result, 100

test 'it should return the index of closest value', ->
  x = 4.5
  result = binarySearch xs, x, comp
  equal result, 5