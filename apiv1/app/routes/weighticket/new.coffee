`import Ember from 'ember'`

WeighticketNewRoute = Ember.Route.extend
  model: ->
    @iogrid.then (grid) -> grid.get("scales.firstObject")

`export default WeighticketNewRoute`
