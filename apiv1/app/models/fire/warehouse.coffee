`import Ember from 'ember'`
`import DS from 'ember-data'`

FireWarehouse = DS.Model.extend
  status: DS.attr "string"
  tileName: DS.attr "string"

  batchIds: DS.attr "strings"

  batches: Ember.computed "batchIds", (key, batches) ->
    if arguments.length > 1
      @set "batchIds", batches.mapBy("id")
    return if Ember.isBlank @get("batchIds")
    ids = @get("batchIds")
    @store.find "batch", ids: ids
`export default FireWarehouse`
