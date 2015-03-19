`import Ember from 'ember'`

ScalemasterTruckController = Ember.Controller.extend
  truck: Ember.computed.alias("model")
  truckLeftMessage: (appno) ->
    archtype: "truck has left site"
    title: "appointment no. #{appno} truck has left"
    createdAt: new Date()

  actions:
    truckHasLeft: ->
      appno = @get("truck.appointmentNumber")
      @get("model").destroyRecord()
      .then =>
        @store.createRecord("message", @truckLeftMessage appno).save()
      .then =>
        @transitionToRoute "scalemaster.index"

`export default ScalemasterTruckController`
