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

  firePromise: DSC.promiseTo "fire/truck", foreignKey: "fireId", foreignField: "fire"
  rail: DSC.belongsTo2 "rail/truck", foreignKey: "railId", promiseField: "railPromise"

  dock: alias "fire.dock"
  position: alias "fire.position"
  dockId: alias "fire.dockId"
  entryScaleId: alias "fire.entryScaleId"
  weighticketId: alias "fire.weighticketId"
  entryScaleIdPromise: APM.promiseDelegate "firePromise.entryScaleId"
  exitScaleIdPromise: APM.promiseDelegate "firePromise.exitScaleId"
  weighticketIdPromise: APM.promiseDelegate "firePromise.weighticketId"
  appointmentNumber: alias "fire.appointmentId"
  arrivedAtAgo: alias "fire.arrivedAtAgo"
  weighticket: alias "fire.weighticket"
  weighticketPromise: APM.promiseDelegate "firePromise.weighticket"
  appointment: alias "fire.appointment"

  isMoving: alias "fire.isMoving"
  isStill: alias "fire.isStill"
  isWaitingToEnter: alias "fire.isWaitingToEnter"
  isOnSite: alias "fire.isOnSite"
  isLeavingSite: alias "fire.isLeavingSite"
  motionStatus: Ember.computed "isWaitingToEnter", "isOnSite", "isLeavingSite", "isMoving", "isStill", ->
    switch
      when @get "isWaitingToEnter" then "waiting"
      when @get "isOnSite" then "on site"
      when @get "isLeavingSite" then "leaving"
      else "unknown"
    
  isFullyEvaluated: Ember.computed.alias "fire.isFullyEvaluated"

  destroyAndCleanup: ->
    @get "firePromise"
    .then (fire) ->
      fire.cleanupAppointment()
    .then =>
      @destroyRecord()
  gotoDock: ->
    @get "firePromise"
    .then (fire) =>
      fire.gotoDock @
    .then (fire) =>
      @store.createRecord("message", calculateMessage @).save()
    .then =>
      @

  gotoExit: ->
    @get "firePromise"
    .then (fire) =>
      fire.gotoExit()
    .then =>
      @

  prepareToLeave: (scale) ->
    @get "firePromise"
    .then (fire) =>
      fire.prepareToLeave scale
    .then =>
      @

  leaveDock: ->
    @get "firePromise"
    .then (fire) ->
      fire.leaveDock()
    .then =>
      @

`export default Truck`
