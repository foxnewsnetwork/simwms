`import Ember from 'ember'`

DocksDockIndexController = Ember.Controller.extend
  truck: Ember.computed.alias "model.truck"

  problemResolvedMessage: ->
    archtype: "problem resolved"
    note: "the problem has been marked as resolved, control at this dock will now return to me (the comptuer)."
    title: "The problem at dock no. #{@get('model.dockNumber')} has been resolved"
    permalink: @get("model.id")
    permatype: "barn"
    createdAt: new Date()
  actions:
    resolveProblem: ->
      @model.resolveProblem()

    truckArrived: ->
      @model.workOnTruck()
      .then =>
        @transitionToRoute "docks.truck.arrive", @get("model.truckId")

`export default DocksDockIndexController`
