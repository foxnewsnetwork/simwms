`import Ember from 'ember'`

ScalemasterIndexController = Ember.Controller.extend
  actions:
    openTruck: (truck) ->
      @transitionToRoute "scalemaster.truck", Ember.get(truck, "id")

`export default ScalemasterIndexController`
