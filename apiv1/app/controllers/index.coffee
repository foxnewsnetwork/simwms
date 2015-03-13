`import Ember from 'ember'`

IndexController = Ember.Controller.extend
  roles: ["manager", "scalemaster", "dockworker", "logistics"]
  prepare: (params) ->
    role = params.get("role")
    role: role
    email: "#{role}@test.co"
    password: "asdf123"
  redirectOut: ->
    switch @get("session.me.role")
      when "manager" then @transitionToRoute "manager"
      when "logistics" then @transitionToRoute "logistics"
      when "dockworker" then @transitionToRoute "dockworker", 1
      when "scalemaster" then @transitionToRoute "scalemaster", 1
      else @transitionToRoute "index"
  actions:
    login: (params) ->
      @store
      .createRecord "session", @prepare params
      .save()
      .then (session) => @session.set("me", session)
      .then _.bind(@redirectOut, @)

`export default IndexController`
