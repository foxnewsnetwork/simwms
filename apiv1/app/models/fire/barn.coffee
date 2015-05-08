`import Ember from 'ember'`
`import DS from 'ember-data'`
`import DSC from 'ember-data-complex'`

FireBarn = DSC.ModelComplex.extend
  tileName: DS.attr "string"
  
  messageId: DS.attr "string"
  truckId: DS.attr "string"

  message: DSC.belongsTo "message", "messageId"
  truck: DSC.belongsTo "truck", "truckId"

  dockNumber: Ember.computed.alias("tileName")
  isOkay: Ember.computed.not "isBusy"
  isBusy: Ember.computed.or "isInUse", "isProblem"
  isInUse: Ember.computed.and "truck"
  isProblem: Ember.computed.and "message"

  waitForTruck: (truck) ->
    @set "truck", truck
    @save()

  finishWithTruck: ->
    @set "truck", null
    @save()

`export default FireBarn`
