`import Ember from 'ember'`

IndexController = Ember.Controller.extend
  roles: ["manager", "scalemaster", "dockworker", "logistics"]
  prepare: (params) ->
    role = params.get("role")
    role: role
    email: "#{role}@test.co"
    password: "asdf123"
  allahuAckbar: ->
    switch @get("session.me.role")
      when "manager" then @transitionToRoute "manager"
      when "logistics" then @transitionToRoute "logistics"
      when "dockworker" then @transitionToRoute "docks"
      when "scalemaster" then @transitionToRoute "scalemaster"
      else @transitionToRoute "index"
  nullSessionPromise: ->
    if @session.get("me")?
      @session.get("me").destroyRecord()
      .then => @session.set "me", null
    else
      new Ember.RSVP.Promise (resolve) -> resolve()
  actions:
    login: (params) ->
      @nullSessionPromise()
      .then => @store.createRecord("session", @prepare params).save()
      .then (session) => @session.set("me", session)
      .then _.bind(@allahuAckbar, @)

`export default IndexController`
