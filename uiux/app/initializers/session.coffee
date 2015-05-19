# Takes two parameters: container and app
initialize = (ctn, app) ->
  store = ctn.lookup "store:main"
  Session = Ember.Object.extend
    store: store  
    init: ->
      @_super()
      @store
        .find "session", "whoami"
        .then (session) => @set "me", session 
        .catch -> console.log "You must log in first!"
  app.register "session:main", Session
  app.inject "controller", "session", "session:main"
  app.inject "route", "session", "session:main"
  app.inject "component", "session", "session:main"

SessionInitializer =
  name: 'session'
  after: 'store'
  initialize: initialize

`export {initialize}`
`export default SessionInitializer`
