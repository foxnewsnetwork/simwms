`import Ember from 'ember'`

ScalemasterController = Ember.Controller.extend
  actions:
    exitScalemaster: ->
      @transitionToRoute "index"

`export default ScalemasterController`
