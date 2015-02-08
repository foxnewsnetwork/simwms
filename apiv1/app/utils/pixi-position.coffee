`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`

PixiPosition = Ember.Object.extend
  order: FunEx.computed "tileX", "tileY", ->
    return unless @get("tileX")? and @get("tileY")?
    @get("tileY") - @get("tileX")

`export default PixiPosition`
