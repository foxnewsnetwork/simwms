`import Ember from 'ember'`
`import EmberCPM from 'ember-cpm'`
`import config from 'apiv1/config/environment'`

PrintDomain = config.print



StationsStationArrivalsController = Ember.Controller.extend
  queryParams: ["state", "appointment"]
  appointment: null
  state: null
  hasState: Ember.computed.notEmpty "state"
  atWeighticketStep: Ember.computed.not "hasState"
  atPrintoutStep: Ember.computed.equal "state", "print"
  atGiveStep: Ember.computed.equal "state", "give"
  firstFreeDockNumber: Ember.computed.reads "iogrid.oldestAvailableDock.dockNumber"
  station: Ember.computed.alias "model.station"
  params: Ember.computed.alias "model.params"
  
  calculateTruck: (weighticket) ->
    arrivedAt: Ember.get(weighticket, "createdAt")
    status: inferStatus(weighticket)
    origination: @get "station.id"
    origintype: "live/scale"
    destination: @inferTarget(weighticket)
    destinytype: "live/barn"
    weighticketId: weighticket.get("id")

  calculateMessage: (truck) ->
    archtype: inferTruckIntention(truck)
    permalink: Ember.get(truck, "id")
    title: inferMessageTitle(truck)
    createdAt: new Date()

  inferTarget: (ticket) ->
    Ember.get(ticket, "dockNumber")

  printTicketLink: EmberCPM.Macros.fmt "weighticket.id", "#{PrintDomain}/weightickets/%@"
  actions:
    newTicket: (params) -> 
      params.validate()
      .then (params) ->
        params.get "contents"
      .then (params) =>
        params.issuerId = @get "station.id"
        params
      .then (checkedParams) =>
        @store.createRecord("weighticket", checkParams).save()
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
        @transitionToRoute "stations.station", @get("station.id")

`export default StationsStationArrivalsController`
