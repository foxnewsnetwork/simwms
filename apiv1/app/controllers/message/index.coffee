`import Ember from 'ember'`

MessageIndexController = Ember.Controller.extend
  actions:
    resolveMessage: ->
      @model.destroyRecord().then => @send 'closeModal'

`export default MessageIndexController`
