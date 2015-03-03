`import Ember from 'ember'`

LogisticsController = Ember.Controller.extend
  actions:
    exitLogistics: ->
      @transitionToRoute "index"

`export default LogisticsController`
