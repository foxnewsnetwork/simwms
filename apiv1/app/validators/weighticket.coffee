`import Ember from 'ember'`
`import FunctionalValidation from 'ember-functional-validation'`

ensureRealAppointment = (model) ->
  store = model.store
  appno = model.get("appointmentNumber")
  return if Ember.isBlank appno
  store.find "appointment", appno
  .then ->
    null
  .catch ->
    "the appointment number: #{appno} doesn't exist"

ensureFreeDock = (model) ->
  store = model.store
  dockno = model.get "targetDock"
  return if Ember.isBlank dockno
  store.find "live/barn", dockno
  .then (barn) ->
    "the dock number: #{dockno} is not free, please select another dock" unless barn.get("isOkay")?
  .catch ->
    "the dock number: #{dockno} doesn't exist"

weighticketValidator = FunctionalValidation.create
  appointmentNumber:
    presence: true
    custom: ensureRealAppointment
  pounds: 
    presence: true
  licensePlate: 
    presence: true
  targetDock: 
    presence: true
    custom: ensureFreeDock

`export default weighticketValidator`