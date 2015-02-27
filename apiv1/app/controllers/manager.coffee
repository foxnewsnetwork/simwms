`import Ember from 'ember'`
`import FunEx from 'apiv1/utils/fun-ex'`
`import DebugEx from 'apiv1/utils/debug-ex'`
ManagerController = Ember.Controller.extend
  camera: FunEx.computed "model.camera", ->
    @get "model.camera"
  grid: FunEx.computed "iogrid", ->
    @get "iogrid"
  trucks: FunEx.computed "iotrucks", ->
    @get "iotrucks"
  truck: FunEx.computed "model.truck", ->
    @get "model.truck"
`export default ManagerController`
