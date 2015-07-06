`import Ember from 'ember'`
`import AtomicMixin from 'uiux/mixins/atomic'`

StationsTruckCompleteController = Ember.Controller.extend AtomicMixin,
  truck: Ember.computed.alias "model"
  weighticket: Ember.computed.alias "model.weighticket"
  actions:
    completeTicket: ->
      truck = @get("truck")
      truck.set "departedAt", moment()
      @get("weighticket")
      .then (weighticket) ->
        Ember.RSVP.hash
          weighticket: weighticket.save()
          truck: truck.save()
      .then ({truck}) =>
        @transitionToRoute "stations.truck.exit", @get "truck.id"
      .catch (errors) =>
        @set "mistakes", errors

`export default StationsTruckCompleteController`
