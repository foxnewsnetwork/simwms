`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
delay = FunEx.flip window.setTimeout

foldL = (xs, init, reducer) -> _.reduce xs, reducer, init

waitReduce = (xs, init, wait, reducer) ->
  unless init? and init.then?
    init = new Ember.RSVP.Promise (resolve) -> resolve init
  foldL xs, init, (promise, x) ->
    promise.then (accum) ->
      new Ember.RSVP.Promise (resolve) ->
        delay wait, ->
          resolve reducer accum, x

`export default waitReduce`
