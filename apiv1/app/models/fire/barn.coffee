`import Ember from 'ember'`
`import DS from 'ember-data'`
`import DSC from 'ember-data-complex'`

probMsg = """
You tried to create and assign onto this dock a problem, but this dock already has problems.
You can either resolve its current problem and make a new one, or append to its current problem.
"""

assertNoProblems = (hasProblems) ->
  throw new Error probMsg if hasProblems

FireBarn = DSC.ModelComplex.extend
  tileName: DS.attr "string"
  
  messageId: DS.attr "string"
  truckId: DS.attr "string"

  message: DSC.belongsTo "message", "messageId"
  truck: DSC.belongsTo "truck", "truckId"

  dockNumber: Ember.computed.alias("tileName")
  isOkay: Ember.computed.not "isBusy"
  isBusy: Ember.computed.or "isInUse", "isProblem"
  isInUse: Ember.computed.and "truck"
  isProblem: Ember.computed.and "message"

  status: Ember.computed "isOkay", "isBusy", "isInUse", "isProblem", ->
    return "problem" if @get "isProblem"
    return "busy" if @get "isBusy"
    return "ok" if @get "isOkay"
    "unknown"

  createProblem: (messageParams) ->
    assertNoProblems Ember.isPresent @get "messageId"
    @store.createRecord "message", messageParams
    .save()
    .then (message) =>
      @set "message", message
      @save()

  resolveProblem: ->
    return if Ember.isBlank(problem = @get "message")
    problem.then (problem) =>
      @set "messageId", null
      @save()
      problem.destroyRecord() if problem?

  waitForTruck: (truck) ->
    @set "truck", truck
    @save()

  finishWithTruck: ->
    @set "truck", null
    @save()

`export default FireBarn`
