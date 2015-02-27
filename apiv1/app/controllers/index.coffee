`import Ember from 'ember'`

IndexController = Ember.Controller.extend
  roles: ["manager", "scale master", "dock worker"]
  prepare: (params) ->
    role: params.get("role")
  redirectOut: ->
    switch @get("session.me.role")
      when "manager" then @transitionToRoute "manager"
      when "dock worker" then @transitionToRoute "dockworker"
      when "scale master" then @transitionToRoute "scalemaster"
      else @transitionToRoute "index"
  actions:
    login: (params) ->
      @store
      .createRecord "session", @prepare params
      .save()
      .then (session) => @session.set("me", session)
      .then _.bind(@redirectOut, @)


`export default IndexController`
