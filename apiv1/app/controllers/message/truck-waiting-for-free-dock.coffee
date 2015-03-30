`import Ember from 'ember'`

MessageTruckWaitingForFreeDockController = Ember.Controller.extend
  actions:
    resolveMessage: ->
      @model.destroyRecord().then => @send 'closeModal'

`export default MessageTruckWaitingForFreeDockController`
