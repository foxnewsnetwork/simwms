`import Ember from 'ember'`

ApplicationController = Ember.Controller.extend
  camera: Ember.computed "model.camera", ->
    @get "model.camera"
  trucks: Ember.computed "iotrucks", ->
    @get "iotrucks"
  truck: Ember.computed "model.truck", ->
    @get "model.truck"
  grid: Ember.computed "iogrid", ->
    @get "iogrid"

`export default ApplicationController`
