`import Ember from 'ember'`
`import {processMacro} from 'uiux/collections/appointments'`
`import AppointmentRelationshipsCollection from 'uiux/collections/appointment_relationships'`
`import BatchRelationshipsCollection from 'uiux/collections/batch_relationships'`

processAppointmentSearch = (search) ->
  hash = processMacro macro: "all-dropoffs"
  hash.search = search
  hash.per_page = 1024
  hash

LogisticsAppointmentRelateRoute = Ember.Route.extend
  queryParams:
    search:
      refreshModel: false
  model: ({search})->
    appointment = @modelFor "logistics.appointment"
    Ember.RSVP.hash
      appointments: @store.find("appointment", processAppointmentSearch search)
      batches: @store.find("batch", {search})
      brs: @store.find("batchRelationship", appointment_id: appointment.get("id"))
      ars: @store.find("appointmentRelationship", pickup_id: appointment.get("id"))
    .then ({appointments, batches, brs, ars}) =>
      batchRelationships = BatchRelationshipsCollection.create
        content: brs
        appointment: appointment
        batches: batches
      appointmentRelationships = AppointmentRelationshipsCollection.create
        content: ars
        pickup: appointment
        dropoffs: appointments
      
      {batchRelationships, appointmentRelationships, appointment}

  actions:
    refresh: -> @refresh()
      
      


`export default LogisticsAppointmentRelateRoute`
