`import DS from 'ember-data'`

Trucks = DS.PromiseArray.extend
  enteringTrucks: Ember.computed.filterBy "content", "isWaitingToEnter"
  exitingTrucks: Ember.computed.filterBy "content", "isLeavingSite"
  onSiteTrucks: Ember.computed.filterBy "content", "isOnSite"

initialize = (ctn, app) ->
  store = ctn.lookup("store:main")
  trucks = Trucks.create promise: store.find("truck")
  app.register "io:trucks", trucks, instantiate: false
  app.inject "controller", "iotrucks", "io:trucks"
  app.inject "route", "iotrucks", "io:trucks"
  
TrucksInitializer =
  name: 'trucks'
  after: 'store'
  initialize: initialize

`export {initialize}`
`export default TrucksInitializer`
