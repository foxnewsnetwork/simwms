`import DS from 'ember-data'`
`import FunEx from '../utils/fun-ex'`
`import PixiPosition from '../utils/pixi-position'`
Scale = DS.Model.extend
  x: DS.attr "number"
  y: DS.attr "number"
  z: DS.attr "number"

  order: FunEx.computed "position.order", ->
    @get("position.order")

  position: FunEx.computed "x", "y", "z", ->
    return unless @get("x")? and @get("y")?
    PixiPosition.create 
      x: @get("x") 
      y: @get("y")
      constant: @get("z")

`export default Scale`
