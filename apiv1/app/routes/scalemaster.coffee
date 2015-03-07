`import Ember from 'ember'`

ScalemasterRoute = Ember.Route.extend
  model: ->

  actions:
    exitRole: ->
      @transitionTo "index"
      @get("session.me").destroyRecord().then => @set "session.me", null

`export default ScalemasterRoute`
