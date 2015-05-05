`import DS from 'ember-data'`
`import Warehouse from '../warehouse'`

LiveWarehouse = Warehouse.extend
  permalink: DS.attr "string"

  stableVersion: Ember.computed "permalink", ->
    return if Ember.isBlank @get "permalink"
    @store.find "stable/warehouse", @get "permalink"
  
  batches: Ember.computed.alias "stableVersion.batches" 

`export default LiveWarehouse`
