`import Ember from 'ember'`

LogisticsAppointmentsNewController = Ember.Controller.extend
  prepare: (params) ->
    company: Ember.get(params, "company")
    materialDescription: Ember.get(params, "materialDescription")
    expectedAt: new Date Ember.get(params, "expectedAt")
    notes: Ember.get(params, "notes")
  actions:
    create: (params) ->
      appt = @store.createRecord("appointment", @prepare params)
      appt.save().then => @transitionToRoute "logistics.appointments.index"
      @set "appointment", appt

`export default LogisticsAppointmentsNewController`
