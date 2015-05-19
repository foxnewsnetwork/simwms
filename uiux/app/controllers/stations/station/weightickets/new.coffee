`import Ember from 'ember'`
`import validate from 'apiv1/validators/weighticket'`
`import AtomicMixin from 'apiv1/mixins/atomic'`

invalidMsg = """
You expected your weighticket to correctly save, but it didn't do that.
This is definitely your fault.
"""
StationsStationWeighticketsNewController = Ember.Controller.extend AtomicMixin,
  queryParams: ["appointment"]
  appointment: null
  dockChoices: Ember.computed.mapBy "iogrid.barns", "selectChoice"

  watchForOldestDock: Ember.observer "iogrid.oldestAvailableDock.id", ->
    return if Ember.isBlank @get "iogrid.oldestAvailableDock.id"
    ticket = @get "model"
    ticket.set "targetDock", @get("iogrid.oldestAvailableDock.id")

  actions:
    newTicket: ->
      @atomically =>
        validate @get "model"
        .then (weighticket) ->
          weighticket.save()
        .then (weighticket) =>
          @transitionToRoute "stations.weighticket.print", weighticket.get("id")
        .catch (errors) =>
          @set "mistakes", errors
          Ember.assert invalidMsg, errors?
`export default StationsStationWeighticketsNewController`
