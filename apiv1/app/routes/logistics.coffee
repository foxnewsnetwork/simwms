`import Ember from 'ember'`

LogisticsRoute = Ember.Route.extend
  actions:
    exitRole: ->
      @transitionTo "index"
      @get("session.me").destroyRecord().then => @set "session.me", null
  

`export default LogisticsRoute`
