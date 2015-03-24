`import Ember from 'ember'`
`import FunEx from 'apiv1/utils/fun-ex'`

MessageMiscellaniousController = Ember.Controller.extend
  actions:
    resolveMessage: ->
      @model.destroyRecord().then => @send 'closeModal'


`export default MessageMiscellaniousController`
