# Takes two parameters: container and app
initialize = (ctn, app) ->
  store = ctn.lookup("store:main")
  trucks = []
  app.register "io:trucks", trucks, instantiate: false
  app.inject "controller", "iotrucks", "io:trucks"
  app.inject "route", "iotrucks", "io:trucks"
  
TrucksInitializer =
  name: 'trucks'
  after: 'store'
  initialize: initialize

`export {initialize}`
`export default TrucksInitializer`
