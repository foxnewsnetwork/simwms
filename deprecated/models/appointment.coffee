`import DS from 'ember-data'`
`import Ember from 'ember'`
Appointment = DS.Model.extend
  materialDescription: DS.attr "string"
  company: DS.attr "string"
  notes: DS.attr "string"
  status: DS.attr "string"
  createdAt: DS.attr "date"
  updatedAt: DS.attr "date"
  expectedAt: DS.attr "date"
  fulfilledAt: DS.attr "date"
  cancelledAt: DS.attr "date"
  explodedAt: DS.attr "date"

  permalink: Ember.computed.alias "id"
  
  expectedAtAgo: Ember.computed "expectedAt", ->
    return if Ember.isBlank @get "expectedAt"
    $.timeago @get "expectedAt"

  statusIsPlanned: Ember.computed.equal "status", "planned"
  statusIsProblem: Ember.computed.equal "status", "problem"
  statusIsExpected: Ember.computed.equal "status", "expected"
  statusIsFulfilled: Ember.computed.equal "status", "fulfilled"
  statusIsCancelled: Ember.computed.equal "status", "cancelled"
  statusIsVanished: Ember.computed.equal "status", "vanished"
  statusIsUnknown: Ember.computed.equal "status", "unknown"

  isCancellable: Ember.computed.or "statusIsPlanned", "statusIsProblem", "statusIsUnknown", "statusIsExpected", "statusIsVanished"

  canReschedule: Ember.computed.not "statusIsFulfilled"
  cancel: ->
    @set "cancelledAt", new Date()

  uncancel: ->
    @set "cancelledAt", null

  explode: ->
    @set "explodedAt", new Date()

  unexplode: ->
    @set "explodedAt", null
`export default Appointment`
