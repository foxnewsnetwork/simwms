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

readOnlyMsg = (key, value) -> """
APM's promiseDelegate and eventuallyEqual always returns a read-only promise, yet you, 
for some incomprehensible reason,decided to call set on a read-only promise object. 
This means, somewhere in your code, you called:

this.set(#{key}, #{value});

Which is an oversight on your part. If you didn't do this, then your either using #{key} is your templates
(which you shouldn't be), or you're setting key on your create (which you also shouldn't be).
"""

# sort of like alias, except ALWAYS returns a promise
promiseDelegate = (names) ->
  fields = names.split "."
  Ember.computed names, (key, value) ->
    if arguments.length > 1
      throw new Error readOnlyMsg key, value
    syncReduce promiseLift(@), fields, (ctx, field) ->
      ctx.get field

class APM
  @alias = alias
  @promiseDelegate = promiseDelegate

`export default APM`
`export {
  APM,
  alias,
  promiseDelegate
}`