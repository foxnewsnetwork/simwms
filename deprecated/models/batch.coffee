`import DS from 'ember-data'`

Batch = DS.Model.extend
  appointmentId: DS.attr "string"
  warehouseId: DS.attr "string"
  weighticketId: DS.attr "string"
  entryDockId: DS.attr "string"
  exitDockId: DS.attr "string"
  permalink: DS.attr "string"
  description: DS.attr "string"
  quantity: DS.attr "string"
  createdAt: DS.attr "date"

  appointment: Ember.computed "appointmentId", (key, value) ->
    if arguments.length > 1
      @set "appointmentId", Ember.get(value, "id")
    return if Ember.isBlank @get "appointmentId"
    @store.find "appointment", @get "appointmentId"
  weighticket: Ember.computed "weighticketId", (key, value) ->
    if arguments.length > 1
      @set "weighticketId", Ember.get(value, "id")
    return if Ember.isBlank @get "weighticketId"
    @store.find "weighticket", @get "weighticketId"

  warehouse: Ember.computed "warehouseId", (key, value) ->
    if arguments.length > 1
      @set "warehouseId", Ember.get(value, "id")
    return if Ember.isBlank @get "warehouseId"
    @store.find "stable/warehouse", @get "warehouseId"
  
  entryDock: Ember.computed "entryDockId", (key, value) ->
    if arguments.length > 1
      @set "entryDockId", Ember.get(value, "id")
    return if Ember.isBlank @get "entryDockId"
    @store.find "live/barn", @get "entryDockId"

  exitDock: Ember.computed "exitDockId", (key, value) ->
    if arguments.length > 1
      @set "exitDockId", Ember.get(value, "id")
    return if Ember.isBlank @get "exitDockId"
    @store.find "live/barn", @get "exitDockId"

`export default Batch`
