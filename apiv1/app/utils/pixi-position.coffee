`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`

PixiPosition = Ember.Object.extend
  order: FunEx.computed "tileX", "tileY", "constant", ->
    return unless @get("tileX")? and @get("tileY")?
    c = @get("constant") or 0
    @get("tileY") - @get("tileX") + c

`export default PixiPosition`
