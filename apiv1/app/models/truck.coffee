`import Ember from 'ember'`
`import DS from 'ember-data'`
`import DSC from 'ember-data-complex'`
`import APM from '../utils/async-property-macros'`

alias = Ember.computed.alias

inferTruckIntention = (truck) -> 
  "truck arrived on site"
  
inferMessageTitle = (truck) ->
  return if Ember.get(truck, "destiny")?
  appno = Ember.get truck, "appointmentNumber"
  "appointment no.#{appno} truck has arrived but no dock is available"

calculateMessage = (truck) ->
  archtype: "truck arrived on site"
  permalink: Ember.get(truck, "id")
  title: "truck has arrived and is headed toward the loading dock"
  createdAt: new Date()
  truck: truck

Truck = DSC.ModelComplex.extend
  fireId: DS.attr "string"
  railId: DS.attr "string"

  fire: DSC.belongsTo "fire/truck", "fireId"
  rail: DSC.belongsTo "rail/truck", "railId"

  appointmentNumber: alias "fire.appointmentId"
  arrivedAtAgo: alias "fire.arrivedAtAgo"
  weighticket: APM.alias "fire.weighticket"
  appointment: APM.alias "fire.appointment"

  gotoDock: ->
    @get "fire"
    .then (fire) =>
      fire.gotoDock @
    .then (fire) =>
      @store.createRecord("message", calculateMessage @).save()

  gotoExit: ->
    @get "fire"
    .then (fire) =>
      fire.gotoExit()

  leaveDock: ->
    @get "fire"
    .then (fire) =>
      fire.leaveDock()

`export default Truck`
