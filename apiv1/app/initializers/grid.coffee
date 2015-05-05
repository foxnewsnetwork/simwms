`import Ember from 'ember'`
`import DS from 'ember-data'`
`import Grid from '../models/grid'`

initialize = (ctn, app) ->
  store = ctn.lookup "store:main"
  promiseGrid = store.find "rail/grid", "latest"
  .then (railGrid) ->
    Ember.RSVP.hash
      barns: store.find "barn"
      scales: store.find "scale"
      warehouses: store.find "warehouse"
      roads: store.all "rail/road"
      stations: store.all "rail/station"
  .then (attributes) ->
    Grid.create attributes
  .catch (errors) ->
    console.log errors
    throw errors
  grid = DS.PromiseObject.create promise: promiseGrid

  app.register "io:grid", grid, instantiate: false
  app.inject "controller", "iogrid", "io:grid"
  app.inject "route", "iogrid", "io:grid"

GridInitializer =
  name: 'grid'
  after: 'store'
  initialize: initialize

`export {initialize}`
`export default GridInitializer`
