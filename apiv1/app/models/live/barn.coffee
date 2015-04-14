`import Ember from 'ember'`
`import DS from 'ember-data'`
`import Barn from '../barn'`

LiveBarn = Barn.extend
  truckId: DS.attr "string"

  truck: Ember.computed "truckId", (key, truck) ->
    if arguments.length > 1
      @set "truckId", Ember.get(truck, "id")
    return if Ember.isBlank @get "truckId"
    @store.find "truck", @get "truckId"

  waitForTruck: (truck) ->
    @set "truck", truck
    @set "status", "waiting"
    @save()
    
  workOnTruck: ->
    @set "status", "in use"
    @save()

  finishWithTruck: ->
    @set "truck", null
    @set "status", "okay"
    @save()

`export default LiveBarn`
