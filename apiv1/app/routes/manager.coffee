`import Ember from 'ember'`
`import PixiCamera from '../utils/pixi-camera'`
ManagerRoute = Ember.Route.extend
  model: ->
    camera: PixiCamera.create(x: 250, y: 280, zoom: 0.8)

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
    arriveAtBarn: (truck) ->
      @iotrucks.removeObject truck
      truck.enterBarn()
      barn = truck.get("destiny")
      @store.find "barn", Ember.get(barn, "id")
      .then (barn) -> barn.workOnTruck truck
    exitSite: (truck) ->
    exitManager: ->
      @transitionTo "index"
      @get("session.me").destroyRecord().then => @set "session.me", null
      location.reload()

`export default ManagerRoute`
