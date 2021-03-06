`import Ember from 'ember'`
`import validate from 'uiux/validators/weighticket'`
`import AtomicMixin from 'uiux/mixins/atomic'`

invalidMsg = """
You expected your weighticket to correctly save, but it didn't do that.
This is definitely your fault.
"""
StationsStationWeighticketsNewController = Ember.Controller.extend AtomicMixin,
  queryParams: ["appointment"]
  appointment: null
  dockChoices: Ember.computed.alias "model.docks.dockChoices"

  watchForOldestDock: Ember.observer "model.firstAvailableDock.id", ->
    return if Ember.isBlank @get "model.firstAvailableDock.id"
    ticket = @get "model"
    ticket.set "targetDock", @get("model.firstAvailableDock.id")

  actions:
    killPic: (uri) ->
      @get("model.dataUris")?.removeObject uri
    newTicket: ->
      @atomically =>
        validate @get "model"
        .then (weighticket) ->
          weighticket.save()
        .catch (errors) =>
          @set "mistakes", errors
          Ember.assert invalidMsg, errors?
        .then (weighticket) =>
          @transitionToRoute "stations.weighticket.print", weighticket.get("id")
`export default StationsStationWeighticketsNewController`
