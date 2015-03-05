`import Ember from 'ember'`

CellRoute = Ember.Route.extend
  model: (cell_id: id)->
    Ember.Object.create id: id

`export default CellRoute`
