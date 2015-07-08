`import Ember from 'ember'`
`import {processMacro} from 'uiux/collections/appointments'`

ManagerRoute = Ember.Route.extend
  model: ->
    tiles = @modelFor "application"
    batches = @store.all "batch"
    Ember.RSVP.hash
      appointments: @store.find "appointment", processMacro macro: "today"
      trucks: @store.find("truck").filterBy("departedAt", null)
    .then ({trucks, appointments}) -> {trucks, batches, tiles, appointments}

`export default ManagerRoute`
