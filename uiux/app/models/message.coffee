`import DS from 'ember-data'`
`import DSC from 'ember-data-complex'`
`import EmberCPM from 'ember-cpm'`

Levels = [
  "update", 
  "notice", 
  "warning", 
  "breaking"
]
Archtypes = 
  "truck arrived on site": "notice"
  "truck at loading dock": "update"
  "truck left dock is free": "update"
  "truck waiting for free dock": "warning"
  "truck at exit station": "update"
  "truck has left site": "update"
  "problem": "breaking"
  "miscellanious": "notice"
  "problem resolved": "update"

Message = DS.Model.extend
  archtype: DS.attr "string"
  note: DS.attr "string"
  title: DS.attr "string"
  permalink: DS.attr "string"
  permatype: DS.attr "string"
  createdAt: DS.attr "date"

  createdAtAgo: Ember.computed "createdAt", ->
    return unless @get("createdAt")?
    Ember.$.timeago @get "createdAt"

  threatLevel: Ember.computed "archtype", ->
    return unless (key = @get "archtype")?
    Ember.get Archtypes, key

  tickerTitle: EmberCPM.Macros.firstPresent "title", "archtype"
  isUpdate: Ember.computed.equal "threatLevel", "update"
  isNotice: Ember.computed.equal "threatLevel", "notice"
  isWarning: Ember.computed.equal "threatLevel", "warning"
  isBreaking: Ember.computed.equal "threatLevel", "breaking"

`export default Message`
