`import DS from 'ember-data'`
`import DSC from 'ember-data-complex'`
`import APM from 'apiv1/utils/async-property-macros'`
alias = Ember.computed.alias

Barn = DSC.ModelComplex.extend
  fireId: DS.attr "string"
  railId: DS.attr "string"

  fire: DSC.belongsTo "fire/barn", "fireId"
  rail: DSC.belongsTo "rail/barn", "railId"

  isSetup: Ember.computed.and "fire", "rail"

  x: DS.attr "number"
  y: DS.attr "number"

  truckId: alias "fire.truckId"
  dockNumber: alias "rail.dockNumber"
  isOkay: alias "fire.isOkay"
  willBeOkay: APM.alias "fire.isOkay"
  isInUse: alias "fire.isInUse"
  willBeInUse: APM.alias "fire.isInUse"
  isProblem: alias "fire.isProblem"
  isWaiting: alias "fire.isWaiting"
  status: alias "fire.status"

  selectChoice: Ember.computed "status", "id", ->
    value: @get("id")
    presentation: ["dock no.", @get("id"), "-", @get("status")].join " "

  waitForTruck: (truck) ->
    @get "fire"
    .then (fire) ->
      fire.waitForTruck truck

  releaseTruck: ->
    @get "fire"
    .then (fire) ->
      fire.releaseTruck()
    .then =>
      @

  createProblem: (messageParams) ->
    @get("fire").then (fire) ->
      fire.createProblem messageParams

  resolveProblem: ->
    @get "fire"
    .then (fire) ->
      fire.resolveProblem()

`export default Barn`
