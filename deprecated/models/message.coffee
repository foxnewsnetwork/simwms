`import DS from 'ember-data'`
`import FunEx from 'apiv1/utils/fun-ex'`

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

  createdAtAgo: FunEx.computed "createdAt", ->
    return unless @get("createdAt")?
    $.timeago @get "createdAt"

  threatLevel: FunEx.computed "archtype", ->
    return unless (key = @get "archtype")?
    Ember.get Archtypes, key

  tickerTitle: FunEx.computed "archtype", "title", ->
    return @get("title") if @get("title")?
    @get "archtype"

  isUpdate: FunEx.computed "archtype", ->
    return true if "update" is @get("threatLevel")
  isNotice: FunEx.computed "archtype", ->
    return true if "notice" is @get("threatLevel")
  isWarning: FunEx.computed "archtype", ->
    return true if "warning" is @get("threatLevel")
  isBreaking: FunEx.computed "archtype", ->
    return true if "breaking" is @get("threatLevel")

`export default Message`
