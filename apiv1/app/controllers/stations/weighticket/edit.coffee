`import Ember from 'ember'`

StationsWeighticketEditController = Ember.Controller.extend
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

`export default StationsWeighticketEditController`
