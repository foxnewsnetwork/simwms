`import Ember from 'ember'`

LogisticsInventoriesRoute = Ember.Route.extend
  model: ->
    @store
    .findAll "batch"

`export default LogisticsInventoriesRoute`
