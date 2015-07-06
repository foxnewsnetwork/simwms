`import Ember from 'ember'`
`import Docks from 'uiux/collections/docks'`

StationsWeighticketEditRoute = Ember.Route.extend
  model: ->
    @store.findAll("tile")
    .then (tiles) =>
      weighticket = @modelFor "stations.weighticket"
      weighticket.set "docks", Docks.fromTiles(tiles)
      weighticket

`export default StationsWeighticketEditRoute`
