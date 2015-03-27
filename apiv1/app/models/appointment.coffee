`import DS from 'ember-data'`
`import FunEx from '../utils/fun-ex'`
Appointment = DS.Model.extend
  permalink: DS.attr "string"
  materialDescription: DS.attr "string"
  company: DS.attr "string"
  notes: DS.attr "string"
  status: DS.attr "string"
  createdAt: DS.attr "date"
  updatedAt: DS.attr "date"
  expectedAt: DS.attr "date"

  expectedAtAgo: FunEx.computed "expectedAt", ->
    $.timeago @get "expectedAt"
`export default Appointment`
