`import Ember from 'ember'`

DockRoute = Ember.Route.extend
  model: (dock_id: id) ->
    @iogrid.then => @store.find "live/barn", id
  actions:
    openModal: (cell) ->
      if cell?
        id = Ember.get(cell, "id")
        id ||= cell
        @transitionTo "cell", id
      else
        throw "Tried to open an inventory cell modal but you didn't give me a cell"
    exitRole: ->
      @transitionTo "index"

`export default DockRoute`
