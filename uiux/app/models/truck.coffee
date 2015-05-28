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

  firePromise: DSC.promiseTo "fire/truck", foreignKey: "fireId", foreignField: "fire2"
  fire: DSC.belongsTo "fire/truck", "fireId"
  rail: DSC.belongsTo "rail/truck", "railId"

  dock: alias "fire2.dock2"
  position: alias "fire2.position"
  dockId: alias "fire2.dockId"
  entryScaleId: alias "fire2.entryScaleId"
  weighticketId: alias "fire2.weighticketId"
  entryScaleIdPromise: APM.promiseDelegate "fire.entryScaleId"
  exitScaleIdPromise: APM.promiseDelegate "fire.exitScaleId"
  weighticketIdPromise: APM.promiseDelegate "fire.weighticketId"
  appointmentNumber: alias "fire2.appointmentId"
  arrivedAtAgo: alias "fire2.arrivedAtAgo"
  weighticket: alias "fire2.weighticket"
  weighticketPromise: APM.promiseDelegate "fire.weighticket"
  appointment: alias "fire2.appointment"

  isMoving: alias "fire2.isMoving"
  isStill: alias "fire2.isStill"
  isWaitingToEnter: alias "fire2.isWaitingToEnter"
  isOnSite: alias "fire2.isOnSite"
  isLeavingSite: alias "fire2.isLeavingSite"
  motionStatus: Ember.computed "isWaitingToEnter", "isOnSite", "isLeavingSite", "isMoving", "isStill", ->
    switch
      when @get "isWaitingToEnter" then "waiting"
      when @get "isOnSite" then "on site"
      when @get "isLeavingSite" then "leaving"
      else "unknown"

  deepSeq: ->
    @get "firePromise"
    .then (fire) -> fire.deepSeq()
    
  isFullyEvaluated: Ember.computed.alias "fire2.isFullyEvaluated"

  gotoDock: ->
    @get "fire"
    .then (fire) =>
      fire.gotoDock @
    .then (fire) =>
      @store.createRecord("message", calculateMessage @).save()
    .then =>
      @

  gotoExit: ->
    @get "fire"
    .then (fire) =>
      fire.gotoExit()
    .then =>
      @

  prepareToLeave: (scale) ->
    @get "fire"
    .then (fire) =>
      fire.prepareToLeave scale
    .then =>
      @

  leaveDock: ->
    @get "fire"
    .then (fire) ->
      fire.leaveDock()
    .then =>
      @

`export default Truck`
