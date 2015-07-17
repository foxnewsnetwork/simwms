`import Ember from 'ember'`
`import AtomicMixin from 'uiux/mixins/atomic'`

LogisticsAppointmentRelateController = Ember.Controller.extend AtomicMixin,
  appointment: Ember.computed.alias "model.appointment"
  batchRelationships: Ember.computed.alias "model.batchRelationships.relationCores"
  appointmentRelationships: Ember.computed.alias "model.appointmentRelationships.relationCores"
  queryParams: ["search"]
  search: null
  searchBuffer: null

  getAnnoyed: ->
    Ember.$ "#annoyed-flash"
    .removeClass "hidden"
    .show()
    .hide(1250)
  actions:
    toggleBatch: (relationship) ->
      return @getAnnoyed() if @get "isBusy"
      @atomically =>
        if relationship.get("isLoaded")
          promise = relationship.destroyRecord()
        else
          promise = @store.createRecord "batchRelationship",
            batch: relationship.get("batch")
            appointment: relationship.get("appointment")
          .save()
        promise.then =>
          @send "refresh"

    toggleAppointment: (relationship) ->
      return @getAnnoyed() if @get "isBusy"
      @atomically =>
        if relationship.get("isLoaded")
          promise = relationship.destroyRecord()
        else
          promise = @store.createRecord "appointmentRelationship",
            pickup: relationship.get("pickup")
            dropoff: relationship.get("dropoff")
          .save()
        promise.then => 
          @send "refresh"

    search: ->
      @send "refresh"

`export default LogisticsAppointmentRelateController`
