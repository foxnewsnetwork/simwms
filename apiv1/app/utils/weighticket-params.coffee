`import Ember from 'ember'`
`import EmberValidations from 'ember-validations'`

ensureRealAppointment = ->
  store = @model.store
  appno = @model.get("appointmentNumber")
  store.find "appointment", appno
  .then ->
    null
  .catch ->
    "the appointment number: #{appno} doesn't exist"

ensureFreeDock = ->
  store = @model.store
  dockno = @model.get "targetDock"
  store.find "live/barn", dockno
  .then (barn) ->
    "the dock number: #{dockno} is not free, please select another dock" unless barn.get("isOkay")?
  .catch ->
    "the dock number: #{dockno} doesn't exist"

Params = Ember.ObjectProxy.extend EmberValidations.Mixin,
  validations:
    appointmentNumber:
      presence: true
      inline: EmberValidations.validator ensureRealAppointment
    pounds: 
      presence: true
      numericality:
        greaterThan: 0
    licensePlate: 
      presence: true
    targetDock: 
      presence: true
      inline: EmberValidations.validator ensureFreeDock


class WeighticketParamMaker
  @setup = (ctn) ->
    p = Params.create container: ctn, content: {}
    p.store = ctn.lookup("store:main")
    p

`export default WeighticketParamMaker`