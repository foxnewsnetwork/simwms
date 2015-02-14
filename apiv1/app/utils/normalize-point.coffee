`import Ember from 'ember'`

firstNumber = (xs...) ->
  _.first xs.reject Ember.isBlank

normalizePoint = (point) ->
  switch
    when point instanceof Ember.Object
      x0 = firstNumber point.get("tileX"), point.tileX, point.get("x"), point.x
      y0 = firstNumber point.get("tileY"), point.tileY, point.get("y"), point.y
      unless x0? and y0?
        throw new BadEmberObjectError(point)
    when point instanceof Array
      [x0, y0] = point
      throw new ShittyArrayError(point) unless x0? and y0?
    when point instanceof Object
      {tileX: x0, tileY: y0} = point
      {x: x0, y: y0} = point unless x0? and y0?
      [x0, y0] = point unless x0? and y0?
      throw new BadObjectError(point) unless x0? and y0?
    else throw new WhatDidYouPassInError(point)
  [x0, y0]

class WhatDidYouPassInError extends Error
  name: "WhatDidYouPassInError"
  constructor: (obj) ->
    @message = "What the fuck did you pass in? #{obj}"
    window.debugObj = obj

class BadEmberObjectError extends Error
  name: "BadEmberObjectError"
  constructor: (obj) ->
    @message = "You passed in a shitty Ember.Object"
    window.debugObj = obj

class BadObjectError extends Error
  name: "BadObjectError"
  constructor: (obj) ->
    @message = "You passed in an object and I can't normalize it\n"
    window.err = @
    window.debugObj = obj

class ShittyArrayError extends Error
  name: "ShittyArrayError"
  constructor: (obj) ->
    @message = "You passed in a shitty array that's probably too short"
    window.debugObj = obj
`export default normalizePoint`
