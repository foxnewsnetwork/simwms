`import Ember from 'ember'`

LogisticsInventoriesRoute = Ember.Route.extend
  model: ->
    @iogrid.then => @store.find "live/warehouse"
  actions:
    openModal: (cell) ->
      if cell?
        id = Ember.get(cell, "id")
        id ||= cell
        @transitionTo "cell", id
      else
        throw "Tried to open an inventory cell modal but you didn't give me a cell"
    closeModal: ->
      @transitionTo "stockpile"

`export default LogisticsInventoriesRoute`
