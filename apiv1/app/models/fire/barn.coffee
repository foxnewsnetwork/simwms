`import Ember from 'ember'`
`import DS from 'ember-data'`
`import DSC from 'ember-data-complex'`

FireBarn = DS.Model.extend
  tileName: DS.attr "string"
  
  messageId: DS.attr "string"
  truckId: DS.attr "string"

  message: DSC.Macros.through "message", "messageId"
  truck: DSC.Macros.through "truck", "truckId"

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
