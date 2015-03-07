`import Ember from 'ember'`

DockworkerRoute = Ember.Route.extend
  model: ->
  actions:
    openModal: (cell) ->
      if cell?
        id = Ember.get(cell, "id")
        id ||= cell
        @transitionTo "cell", id
      else
        throw "Tried to open an inventory cell modal but you didn't give me a cell"
    closeModal: ->
      @transitionTo "dockworker.inventory", 1
    exitRole: ->
      @transitionTo "index"
      @get("session.me").destroyRecord().then => @set "session.me", null

`export default DockworkerRoute`
