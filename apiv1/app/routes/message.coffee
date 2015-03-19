`import Ember from 'ember'`

MessageRoute = Ember.Route.extend
  model: (message_id: id) ->
    @store.find "message", id

`export default MessageRoute`
