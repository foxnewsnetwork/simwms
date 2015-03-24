`import Ember from 'ember'`
`import FunEx from 'apiv1/utils/fun-ex'`

DockIndexController = Ember.Controller.extend
  expectingTruck: FunEx.computed 'truck', ->
    @get("truck")?

  truck: FunEx.computed "iotrucks.@each", ->
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

`export default DockIndexController`
