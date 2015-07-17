`import Ember from 'ember'`

TempObject = Ember.Object.extend
  self: Ember.computed -> @

BatchRelationshipsCollection = Ember.ArrayProxy.extend
  relationCores: Ember.computed "appointment.id", "content.@each.permaindex", "batches.@each.id", ->
    @get("batches").map (batch) =>
      @findOrCreateRelationship(batch, @get("appointment"))

  findOrCreateRelationship: (batch, appointment) ->
    permaindex = "#{appointment.get("id")}-#{batch.get("id")}"
    return relationship if relationship = @findBy "permaindex", permaindex
    TempObject.create
      batch: batch
      appointment: appointment
      

`export default BatchRelationshipsCollection`