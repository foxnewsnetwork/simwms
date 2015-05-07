`import Ember from 'ember'`

syncReduce = (init, xs, iterator) ->
  return init if Ember.isBlank xs
  [x, rest...] = xs
  promiseLift init
  .then (init) ->
    iterator(init, x)
  .then (next) ->
    syncReduce next, rest, iterator

promiseLift = (x) ->
  return x if isPromiseLike x
  new Ember.RSVP.Promise (resolve) -> resolve x

isPromiseLike = (maybePromise) ->
  maybePromise? and
  typeof maybePromise.then is 'function' and
  typeof maybePromise.catch is 'function' and
  typeof maybePromise.finally is 'function'

debugCounter = 0
alias = (names) ->
  fields = names.split "."
  Ember.computed names, (key, value) ->
    if arguments.length > 1
      if isPromiseLike value
        @[key].promiseHasResolved = false
        value.then (v) => @set key, value
        return
      else
        @[key].promiseHasResolved = true
        return @[key].resolvedValue = value 
    return @[key].resolvedValue if @[key].promiseHasResolved is true
    syncReduce promiseLift(@), fields, (ctx, field) ->
      ctx.get field
    .then (value) => @set key, value
    return

class APM
  @alias = alias


`export default APM`
`export {
  alias
}`