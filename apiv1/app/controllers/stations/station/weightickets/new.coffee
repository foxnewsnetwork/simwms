`import Ember from 'ember'`
`import validate from 'apiv1/validators/weighticket'`

StationsStationWeighticketsNewController = Ember.Controller.extend
  queryParams: ["appointment"]
  appointment: null
  dockChoices: Ember.computed.map "iogrid.barns.@each.id", (barn) ->
    value: Ember.get(barn, "id")
    presentation: ["dock no.", Ember.get(barn, "dockNumber"), "-", Ember.get(barn, "status")].join " "

  actions:
    newTicket: ->
      validate @get "model"
      .then (weighticket) ->
        weighticket.save()
      .then (weighticket) =>
        @transitionToRoute "stations.weighticket.print", weighticket.get("id")
      .catch (errors) =>
        @set "mistakes", errors
`export default StationsStationWeighticketsNewController`
