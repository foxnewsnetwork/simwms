`import Ember from 'ember'`

DockworkerController = Ember.Controller.extend
  actions:
    exitDock: ->
      @transitionToRoute "index"

`export default DockworkerController`
