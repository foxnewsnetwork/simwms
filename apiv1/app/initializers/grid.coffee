# Takes two parameters: container and app
initialize = (ctn, app) ->
  store = ctn.lookup "store:main"
  grid = store.find("grid", "latest")
  app.register "io:grid", grid, instantiate: false
  app.inject "controller", "iogrid", "io:grid"
  app.inject "route", "iogrid", "io:grid"

GridInitializer =
  name: 'grid'
  after: 'store'
  initialize: initialize

`export {initialize}`
`export default GridInitializer`
