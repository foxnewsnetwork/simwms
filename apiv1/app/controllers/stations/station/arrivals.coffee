`import Ember from 'ember'`
`import EmberCPM from 'ember-cpm'`
`import config from 'apiv1/config/environment'`

PrintDomain = config.print
Parameters = ["appointmentNumber", "pounds", "licensePlate", "notes", "targetDock"]
buildReduce = (xs, reducer) ->
  xs.reduce reducer, {}
pluckParams = (params) ->
  buildReduce Parameters, (obj, key) -> 
    obj[key] = Ember.get(params, key)
    obj
inferStatus = (ticket) -> if Ember.get(ticket, "targetDock")? then "moving" else "idle"
inferTruckIntention = (truck) -> 
  if Ember.get(truck, "destiny")? 
    "truck arrived on site" 
  else 
    "truck waiting for free dock"
inferMessageTitle = (truck) ->
  return if Ember.get(truck, "destiny")?
  appno = Ember.get truck, "appointmentNumber"
  "appointment no.#{appno} truck has arrived but no dock is available"

StationsStationArrivalsController = Ember.Controller.extend
  queryParams: ["state"]
  state: null
  hasState: Ember.computed.notEmpty "state"
  atWeighticketStep: Ember.computed.not "hasState"
  atPrintoutStep: Ember.computed.equal "state", "print"
  atGiveStep: Ember.computed.equal "state", "give"
  firstFreeDockNumber: Ember.computed.reads "iogrid.oldestAvailableDock.dockNumber"

  prepareWeighticketParams: (params) ->
    p = pluckParams params
    p.issuerId = @get("model.id")
    p

  calculateTruck: (weighticket) ->
    arrivedAt: Ember.get(weighticket, "createdAt")
    status: inferStatus(weighticket)
    origination: @get "model.id"
    origintype: "live/scale"
    destination: @inferTarget(weighticket)
    destinytype: "live/barn"
    weighticket: weighticket

  calculateMessage: (truck) ->
    archtype: inferTruckIntention(truck)
    permalink: Ember.get(truck, "id")
    title: inferMessageTitle(truck)
    createdAt: new Date()

  inferTarget: (ticket) ->
    @iogrid.then (grid) -> 
      grid.get("barns").findBy "dockNumber", Ember.get(ticket, "dockNumber")

  printTicketLink: EmberCPM.Macros.fmt "weighticket.id", "#{PrintDomain}/weightickets/%@"
  actions:
    newTicket: (params) -> 
      @store.createRecord("weighticket", @prepareWeighticketParams params).save()
      .then (weighticket) =>
        @set "weighticket", weighticket
        @set "state", "print"
    printTicket: ->
      @set "state", "give"
    finish: ->
      ticket = @get "weighticket"
      @store.createRecord("truck", @calculateTruck ticket).save()
      .then (truck) =>
        @store.createRecord("message", @calculateMessage truck).save()
      .then =>
        @transitionToRoute "stations.station", @get("model.id")

`export default StationsStationArrivalsController`
