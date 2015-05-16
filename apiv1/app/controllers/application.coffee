`import Ember from 'ember'`

ApplicationController = Ember.Controller.extend
  trucks: Ember.computed.alias "model.trucks"
  grid: Ember.computed.alias "model.grid"


`export default ApplicationController`
