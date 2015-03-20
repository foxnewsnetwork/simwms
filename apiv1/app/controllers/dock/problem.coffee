`import Ember from 'ember'`

DockProblemController = Ember.Controller.extend
  prepare: (params) ->
    archtype: "problem"
    note: Ember.get(params, "notes")
    title: "A problem has occured at loading dock no. #{@get('model.id')}"
    permalink: @get("model.id")
    permatype: "dock"
    createdAt: new Date()
  actions:
    newProblemMessage: (params) ->
      @store.createRecord("message", @prepare params).save()
      .then =>
        @transitionToRoute "dock.status", @get("model.id")

`export default DockProblemController`
