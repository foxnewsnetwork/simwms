`import Ember from 'ember'`

DocksTruckRoute = Ember.Route.extend
  model: (truckId: id)->
    @iogrid.then => @store.find "truck", id

`export default DocksTruckRoute`
