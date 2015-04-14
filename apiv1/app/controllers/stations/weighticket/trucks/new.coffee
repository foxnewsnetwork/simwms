`import Ember from 'ember'`
`import validate from 'apiv1/validators/truck'`

inferTruckIntention = (truck) -> 
  if Ember.get(truck, "destiny")? 
    "truck arrived on site" 
  else 
    "truck waiting for free dock"
inferMessageTitle = (truck) ->
  return if Ember.get(truck, "destiny")?
  appno = Ember.get truck, "appointmentNumber"
  "appointment no.#{appno} truck has arrived but no dock is available"

StationsWeighticketTrucksNewController = Ember.Controller.extend
  truck: Ember.computed.alias "model"
  
  calculateMessage: (truck) ->
    archtype: inferTruckIntention(truck)
    permalink: Ember.get(truck, "id")
    title: inferMessageTitle(truck)
    createdAt: new Date()
    truck: truck
    
  actions:
    finish: ->
      validate @get "truck"
      .then (truck) ->
        truck.save()
      .then (truck) =>
        @store.createRecord("message", @calculateMessage truck).save()
      .then (message) ->
        truck = message.get "truck"
        truck.get("destiny").then (barn) -> barn.waitForTruck truck
      .then =>
        @transitionToRoute "stations.station", @get "model.weighticket.issuerId"
      .catch (errors) =>
        @set "mistakes", errors.map (value, key) -> Ember.Object.create key: key, value: value

`export default StationsWeighticketTrucksNewController`
