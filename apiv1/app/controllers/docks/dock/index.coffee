`import Ember from 'ember'`

DocksDockIndexController = Ember.Controller.extend
  expectingTruck: Ember.computed 'truck', ->
    @get("truck")?

  truck: Ember.computed "iotrucks.@each", ->
    @iotrucks.findBy "origin", @get("model")

  problemResolvedMessage: ->
    archtype: "problem resolved"
    note: "the problem has been marked as resolved, control at this dock will now return to me (the comptuer)."
    title: "The problem at dock no. #{@get('model.dockNumber')} has been resolved"
    permalink: @get("model.id")
    permatype: "live/barn"
    createdAt: new Date()
  actions:
    resolveProblem: ->
      @model.set("status", "okay").save()
      @store.createRecord("message", @problemResolvedMessage()).save()

`export default DocksDockIndexController`
