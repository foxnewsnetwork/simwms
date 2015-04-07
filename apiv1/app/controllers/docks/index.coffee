`import Ember from 'ember'`

DocksIndexController = Ember.Controller.extend
  leftDocks: Ember.computed.filter "iogrid.barns.@each.x", (barn, index, array) ->
    Ember.get(barn, "x") < 0

  rightDocks: Ember.computed.filter "iogrid.barns.@each.x", (barn, index, array) ->
    Ember.get(barn, "x") >= 0

`export default DocksIndexController`
