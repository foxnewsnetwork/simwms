_bs = (xs, x, comp) ->
  halfWay = Math.floor xs.length / 2
  [firsts..., pivot] = xs[0..halfWay]
  lasts = xs.slice halfWay + 1
  return 0 if xs.length is 0
  switch comp x, pivot
    when "<" then _bs(firsts, x, comp)
    when ">" then halfWay + _bs(lasts, x, comp) + 1
    when "=" then halfWay
    else throw new UncomparableError(x, pivot)

binarySearch = (sortedArray, element, numberfy) ->
  numberfy ||= (x) -> parseInt x
  desiredValue = numberfy element
  _bs sortedArray, desiredValue, (x, pivot) ->
    y = numberfy pivot
    return "<" if x < y
    return ">" if x > y
    return "=" if x is y

class UncomparableError extends Error
  name: "UncomparableError"
  constructor: (x,y) ->
    console.log x
    console.log "not comparable with:"
    console.log y
`export default binarySearch`
