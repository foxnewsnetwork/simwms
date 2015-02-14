`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`

PixiPosition = Ember.Object.extend
  order: FunEx.computed "x", "y", "constant", ->
    return unless @get("x")? and @get("y")?
    c = @get("constant") or 0
    @get("y") - @get("x") + c

`export default PixiPosition`
