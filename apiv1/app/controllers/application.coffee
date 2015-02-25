`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import DebugEx from '../utils/debug-ex'`

ApplicationController = Ember.Controller.extend
  camera: FunEx.computed "model.camera", ->
    @get "model.camera"
  grid: FunEx.computed "iogrid", ->
    @get "iogrid"
  trucks: FunEx.computed "iotrucks", ->
    @get "iotrucks"
  truck: FunEx.computed "model.truck", ->
    @get "model.truck"

  
`export default ApplicationController`
