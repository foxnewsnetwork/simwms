`import Ember from 'ember'`
`import FunctionalValidation from 'ember-functional-validation'`

ensurePersistence = (model) ->
  store = model.store
  id = Ember.get model, "weighticketId"
  return if Ember.isBlank id
  store.find "weighticket", id
  .then (ticket) ->
    return if ticket?
    "wasn't able to find the weighticket, and instead got #{ticket}"
  .catch (errors) ->
    "there is no weighticket with id:#{id}\n  #{errors}"

batchValidator = FunctionalValidation.create
  weighticketId:
    presence: true
    custom: ensurePersistence

`export default batchValidator`