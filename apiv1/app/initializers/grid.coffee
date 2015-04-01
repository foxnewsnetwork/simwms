# Takes two parameters: container and app
`import Ember from 'ember'`
`import DS from 'ember-data'`
`import DebugEx from '../utils/debug-ex'`

enliven = (stableModel) ->
  store = stableModel.store
  typeKey = stableModel.constructor.typeKey
  liveKey = typeKey.replace "stable/", "live/"

  liveModel = store.createRecord liveKey

  copyOverFields stableModel, liveModel

copyOverFields = (origin, destiny) ->
  fields = Ember.get(origin.constructor, "fields")
  destiny.set "permalink", origin.get("id")
  fields.forEach (relation, key) ->
    value = origin.get key
    return if Ember.isBlank(key) or Ember.isBlank(value)
    return if key is "batches"
    return destiny.get(key).addObjects value.map enliven if (relation is "hasMany")
    return destiny.set(key, value) unless key is "id"
  destiny

persist = (model) ->
  fields = Ember.get(model.constructor, "fields")
  fields.forEach (relation, key) ->
    Ember.get(model, key).forEach persist if relation is "hasMany"
  model.save()

# Note, this exposes race condition where two clients who
# initial-loaded this program could potential create 2
# liveGrids from the same stableGrid. Luckily, this won't happen
# in real life (ever) because I'm not going to scale this by
# simulatenously having a bunch of computers load my app for its
# initial run.
livePersist = (store) ->
  store
  .find("stable/grid", "latest")
  .then enliven
  .then persist

initialize = (ctn, app) ->
  store = ctn.lookup "store:main"
  promiseGrid = store.find("live/grid").then (grids) ->
    liveGrid = Ember.get grids, "lastObject"
    return liveGrid if liveGrid?
    livePersist store
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
