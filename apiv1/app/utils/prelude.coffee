`import Ember from 'ember'`
promiseLift = (x) ->
  return x if x? and typeof x.then is 'function'
  new Ember.RSVP.Promise (resolve) -> resolve x
firstAndRest = (xs) ->
  switch
    when typeof xs.objectAtContent is 'function'
      [xs.objectAtContent(0), xs.slice(1)]
    when typeof xs.get is 'function'
      [xs.get(0), xs.slice(1)]
    else
      xs
zipCore = (ax, ay) ->
  [x, xs] = firstAndRest ax
  [y, ys] = firstAndRest ay
  return [] if Ember.isBlank(ax) and Ember.isBlank(ay)
  return [] if Ember.isEmpty(ax) and Ember.isEmpty(ay)
  [[x,y]].concat zipCore xs, ys
zip = (xs, ys) ->
  Ember.A zipCore xs, ys
promiseFilter = (xs, polarizer) ->
  asyncMap(xs, polarizer)
  .then (decisions) ->
    zip xs, decisions
    .filter ([_, decision]) -> Ember.isPresent decision
    .map ([x, _]) -> x
promiseFilterBy = (xs, key, expectedValue) ->
  asyncMapBy(xs, key)
  .then (actualValues) -> 
    zip xs, actualValues
    .filter ([_, actualValue]) -> actualValue is expectedValue
    .map ([x, _]) -> x    
asyncMapBy = (xs, field) ->
  asyncMap xs, (x) -> Ember.get x, field
asyncMap = (xs, mapper) ->
  promises = Ember.A xs
  .map mapper
  .map promiseLift
  Ember.RSVP.all promises
reduceBuild = (xs, reducer) ->
  xs.reduce reducer, {}
wait = (time, action) ->
  new Ember.RSVP.Promise (resolve) ->
    Ember.run.later null, (-> resolve action()), time
lll = (x) ->
  console.log x
  x
class Prelude
  @zip = zip
  @promiseFilterBy = promiseFilterBy
  @promiseFilter = promiseFilter
  @promiseLift = promiseLift
  @asyncMapBy = asyncMapBy
  @asyncMap = asyncMap
  @reduceBuild = reduceBuild
  @lll = lll
  @wait = wait
`export default Prelude`
`export {
  promiseLift,
  zip,
  promiseFilterBy,
  promiseFilter,
  lll,
  reduceBuild,
  asyncMapBy,
  asyncMap,
  Prelude,
  wait
}`