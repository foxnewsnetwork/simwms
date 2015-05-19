`import Ember from 'ember'`

ScaleRoute = Ember.Route.extend
  model: (scale_id: scale_id) ->
    @store.find "scale", scale_id

`export default ScaleRoute`
