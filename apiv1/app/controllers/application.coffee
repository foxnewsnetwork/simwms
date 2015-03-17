`import Ember from 'ember'`
`import FunEx from 'apiv1/utils/fun-ex'`

ApplicationController = Ember.Controller.extend
  camera: FunEx.computed "model.camera", ->
    @get "model.camera"
  trucks: FunEx.computed "iotrucks", ->
    @get "iotrucks"
  truck: FunEx.computed "model.truck", ->
    @get "model.truck"
  grid: FunEx.computed "iogrid", ->
    @get "iogrid"

`export default ApplicationController`
