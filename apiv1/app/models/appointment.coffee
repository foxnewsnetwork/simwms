`import DS from 'ember-data'`
`import moment from 'moment'`

Appointment = DS.Model.extend
  materialDescription: DS.attr "string"
  company: DS.attr "string"
  notes: DS.attr "string"
  status: DS.attr "string"
  createdAt: DS.attr "date"
  updatedAt: DS.attr "date"
  expectedAt: DS.attr "moment"
  fulfilledAt: DS.attr "date"
  cancelledAt: DS.attr "date"
  explodedAt: DS.attr "date"

  expectedAtISO: Ember.computed "expectedAt", (key, date) ->
    if arguments.length > 1
      if date?
        @set "expectedAt", moment date
      else
        @set "expectedAt", null
    return if Ember.isBlank @get "expectedAt"
    @get "expectedAt"
    .format "YYYY-MM-DDTHH:mm"
  
  expectedAtAgo: Ember.computed "expectedAt", ->
    return if Ember.isBlank @get "expectedAt"
    @get("expectedAt").fromNow()

  statusIsPlanned: Ember.computed.equal "status", "planned"
  statusIsProblem: Ember.computed.equal "status", "problem"
  statusIsExpected: Ember.computed.equal "status", "expected"
  statusIsFulfilled: Ember.computed.equal "status", "fulfilled"
  statusIsCancelled: Ember.computed.equal "status", "cancelled"
  statusIsVanished: Ember.computed.equal "status", "vanished"
  statusIsUnknown: Ember.computed.equal "status", "unknown"

  isCancellable: Ember.computed.or "statusIsPlanned", "statusIsProblem", "statusIsUnknown", "statusIsExpected", "statusIsVanished"

  canReschedule: Ember.computed.not "statusIsFulfilled"
`export default Appointment`
