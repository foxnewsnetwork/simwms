`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import DebugEx from '../utils/debug-ex'`

ApplicationController = Ember.Controller.extend
  camera: FunEx.computed "model.camera", ->
    @get "model.camera" 
  grid: FunEx.computed "model.grid", ->
    @get "model.grid"
  path: FunEx.computed "model.path", ->
    @get "model.path"
  actions:
    goLeft: ->
      @decrementProperty "camera.x", 10
    goRight: ->
      @incrementProperty "camera.x", 10
  
`export default ApplicationController`
