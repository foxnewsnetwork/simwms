`import Ember from 'ember'`

StationsWeighticketEditController = Ember.Controller.extend
  dockChoices: Ember.computed.mapBy "iogrid.barns", "selectChoice"

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
