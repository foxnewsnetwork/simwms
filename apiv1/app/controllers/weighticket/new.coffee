`import Ember from 'ember'`
`import DebugEx from 'apiv1/utils/debug-ex'`
Parameters = ["appointmentNumber", "issuerId", "pounds", "licensePlate", "targetDock", "notes"]
buildReduce = (xs, reducer) ->
  xs.reduce reducer, {}
pluckParams = (params) ->
  buildReduce Parameters, (obj, key) -> 
    obj[key] = Ember.get(params, key)
    obj

inferDescription = (ticket) -> "Not Implemented"
inferStatus = (ticket) -> if inferTarget(ticket)? then "moving" else "idle"
inferTarget = (ticket) -> Ember.get(ticket, "targetDock")
inferTruckIntention = (truck) -> 
  if Ember.get(truck, "destiny")? 
    "truck arrived on site" 
  else 
    "truck waiting for free dock"
inferMessageTitle = (truck) ->
  return if Ember.get(truck, "destiny")?
  appno = Ember.get truck, "appointmentNumber"
  "appointment no.#{appno} truck has arrived but no dock is available"

WeighticketNewController = Ember.Controller.extend
  displayErrors: (error) ->
    alert JSON.stringify error
    @set "ticketErrors", error

  calculateTruck: (weighticket) ->
    licensePlate: Ember.get(weighticket, "licensePlate")
    materialDescription: inferDescription(weighticket)
    arrivedAt: Ember.get(weighticket, "createdAt")
    status: inferStatus(weighticket)
    origination: Ember.get(@model, "id")
    origintype: "scale"
    destination: inferTarget(weighticket)
    destinytype: "barn"
    appointmentNumber: Ember.get(weighticket, "appointmentNumber")
    weighticket: weighticket

  calculateMessage: (truck) ->
    archtype: inferTruckIntention(truck)
    permalink: Ember.get(truck, "id")
    title: inferMessageTitle(truck)
    createdAt: new Date()

  actions:
    newWeighticket: (params) ->
      @store.createRecord("weighticket", pluckParams params).save()
      .then (weighticket) =>
        @store.createRecord("truck", @calculateTruck weighticket).save()
      .then (truck) =>
        @store.createRecord("message", @calculateMessage truck).save()
      .then (truck) =>
        @transitionTo "scalemaster"
      .catch (error) => @displayErrors error

`export default WeighticketNewController`
