`import DS from 'ember-data'`
`import DSC from 'ember-data-complex'`

alias = Ember.computed.alias

Barn = DSC.ModelComplex.extend
  fireId: DS.attr "string"
  railId: DS.attr "string"

  fire: DSC.belongsTo "fire/barn", "fireId"
  rail: DSC.belongsTo "rail/barn", "railId"

  isSetup: Ember.computed.and "fire", "rail"

  x: DS.attr "number"
  y: DS.attr "number"

  dockNumber: alias "rail.dockNumber"
  isOkay: alias "fire.isOkay"
  isInUse: alias "fire.isInUse"
  isProblem: alias "fire.isProblem"
  isWaiting: alias "fire.isWaiting"

  createProblem: (messageParams) ->
    @get("fire").then (fire) ->
      fire.createProblem messageParams

  resolveProblem: ->
    @get "fire"
    .then (fire) ->
      fire.resolveProblem()

`export default Barn`
