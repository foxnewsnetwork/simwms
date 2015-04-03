`import Ember from 'ember'`

LogisticsAppointmentIndexController = Ember.Controller.extend
  queryParams: ["showprob"]
  showprob: null
  actions:
    cancel: ->
      @model.cancel()
      @model.save()

    uncancel: ->
      @model.uncancel()
      @model.save()

    problem: ->
      @set "showprob", true
    unproblem: ->
      @set "showprob", null

    submitProblem: (problem) ->
      


`export default LogisticsAppointmentIndexController`
