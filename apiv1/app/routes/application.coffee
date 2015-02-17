`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend
  actions:
    openModal: (modalName, model) ->
      if model?
        id = Ember.get(model, "id")
        id ||= model
        @transitionTo modalName, id
      else
        @transitionTo modalName
    closeModal: ->
      @transitionTo "index"

`export default ApplicationRoute`
