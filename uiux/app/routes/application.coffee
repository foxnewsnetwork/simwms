`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend 
  isBusy: Ember.computed.alias "controllerPen.isBusy"
  isPending: Ember.computed.alias "isBusy"

  model: ->
    # camera: PixiCamera.create(x: 250, y: 280, zoom: 0.8)
    Ember.RSVP.hash
      grid: @iogrid
      trucks: @iotrucks

  actions:
    controllerWorking: (controller) ->
      @controllerPen.makeBusy controller

    controllerFinished: (controller) ->
      @controllerPen.makeFree controller

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
