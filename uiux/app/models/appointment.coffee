`import DS from 'ember-data'`
`import moment from 'moment'`
`import { startOfWorkday, finishOfWorkday } from '../utils/punch-card'`

Appointment = DS.Model.extend
  appointmentType: DS.attr "string", defaultValue: "dropoff"
  permalink: DS.attr "string"
  materialDescription: DS.attr "string"
  company: DS.attr "string"
  notes: DS.attr "string"
  createdAt: DS.attr "date"
  updatedAt: DS.attr "date"
  expectedAt: DS.attr "moment"
  fulfilledAt: DS.attr "moment"
  cancelledAt: DS.attr "moment"
  explodedAt: DS.attr "moment"
  weighticket: DS.belongsTo "weighticket"
  truck: DS.belongsTo "truck"
  externalReference: DS.attr "string"

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

  status: Ember.computed "expectedAt", "fulfilledAt", "cancelledAt", "explodedAt", ->
    return "fulfilled" if @get("fulfilledAt")?
    return "cancelled" if @get("cancelledAt")?
    return "problem" if @get("explodedAt")?
    return "problem" unless @get("expectedAt")?
    return "onsite" if @get("truck")?
    return "vanished" if @get("expectedAt") < startOfWorkday()
    return "planned" if finishOfWorkday() < @get("expectedAt")
    return "expected" if startOfWorkday() < @get("expectedAt") < finishOfWorkday()
    "unknown"

  statusIsPlanned: Ember.computed.equal "status", "planned"
  statusIsProblem: Ember.computed.equal "status", "problem"
  statusIsExpected: Ember.computed.equal "status", "expected"
  statusIsFulfilled: Ember.computed.equal "status", "fulfilled"
  statusIsCancelled: Ember.computed.equal "status", "cancelled"
  statusIsVanished: Ember.computed.equal "status", "vanished"
  statusIsUnknown: Ember.computed.equal "status", "unknown"
  statusIsOnsite: Ember.computed.equal "status", "onsite"

  isCancellable: Ember.computed.or "statusIsPlanned", "statusIsProblem", "statusIsUnknown", "statusIsExpected", "statusIsVanished"

  canReschedule: Ember.computed.not "statusIsFulfilled"

  fulfill: ->
    @set "fulfilledAt", moment()
    @save()
`export default Appointment`
