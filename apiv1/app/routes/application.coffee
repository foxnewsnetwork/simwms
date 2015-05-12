`import Ember from 'ember'`
`import PixiCamera from '../utils/pixi-camera'`
ApplicationRoute = Ember.Route.extend
  model: ->
    # camera: PixiCamera.create(x: 250, y: 280, zoom: 0.8)
    Ember.RSVP.hash
      grid: @iogrid
      trucks: @iotrucks

  actions:
    openModal: (modalName, model) ->
      if model?
        id = Ember.get(model, "id")
        id ||= model
        @transitionTo modalName, id
      else
        @transitionTo modalName
    closeModal: ->
      @transitionTo "manager"

`export default ApplicationRoute`
