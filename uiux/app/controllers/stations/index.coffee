`import Ember from 'ember'`
`import FunEx from 'uiux/utils/fun-ex'`

StationsIndexController = Ember.Controller.extend
  entryStation: FunEx.computed "model.@each", ->
    @get "model.firstObject"
  exitStation: FunEx.computed "model.@each", ->
    @get "model.lastObject"

`export default StationsIndexController`
