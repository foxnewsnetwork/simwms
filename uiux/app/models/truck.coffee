`import Ember from 'ember'`
`import DS from 'ember-data'`

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

Truck = DS.Model.extend
  arrivedAt: DS.attr "moment"
  dockedAt: DS.attr "moment"
  undockedAt: DS.attr "moment"
  departedAt: DS.attr "moment"

  entryScale: DS.belongsTo "tile"
  exitScale: DS.belongsTo "tile"
  dock: DS.belongsTo "tile"
  appointment: DS.belongsTo "appointment", async: true
  weighticket: DS.belongsTo "weighticket", async: true

  appointmentPermalink: Ember.computed.alias "appointment.permalink"

  position: Ember.computed "arrivedAt", "dockedAt", "undockedAt", "departedAt", ->
    return "departed" if @get("departedAt")?.isValid()
    return "going to exit" if @get("undockedAt")?.isValid()
    return "at dock" if @get("dockedAt")?.isValid()
    return "going to dock" if @get("arrivedAt")?.isValid()
    "at entrance"

`export default Truck`
