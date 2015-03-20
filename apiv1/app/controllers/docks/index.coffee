`import Ember from 'ember'`
`import FunEx from 'apiv1/utils/fun-ex'`

DocksIndexController = Ember.Controller.extend
  leftDocks: FunEx.computed "iogrid.barns.@each", ->
    return unless @get("iogrid.barns")?
    @get("iogrid.barns").filter (barn) -> Ember.get(barn, "x") < 0

  rightDocks: FunEx.computed "iogrid.barns.@each", ->
    return unless @get("iogrid.barns")?
    @get("iogrid.barns").filter (barn) -> Ember.get(barn, "x") >= 0

`export default DocksIndexController`
