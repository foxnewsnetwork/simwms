`import DS from 'ember-data'`
`import FunEx from '../utils/fun-ex'`
`import PixiPosition from '../utils/pixi-position'`

KnownStatuses = ["okay", "in use", "problem"]
Barn = DS.Model.extend
  x: DS.attr "number"
  y: DS.attr "number"
  z: DS.attr "number"
  status: DS.attr "string"

  workOnTruck: (truck) ->
    @set "status", "in use"
    @save()

  finishWithTruck: ->
    @set "status", "okay"
    @save()

  order: FunEx.computed "position.order", ->
    @get("position.order")

  position: FunEx.computed "x", "y", "z", ->
    return unless @get("x")? and @get("y")?
    PixiPosition.create 
      x: @get("x") 
      y: @get("y")
      constant: @get("z")
`export default Barn`
