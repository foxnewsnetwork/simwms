`import Ember from 'ember'`

ManagerController = Ember.Controller.extend
  iomessages: Ember.computed.alias("model")

  rightNow: Ember.computed.alias("clock.rightNow")
  
`export default ManagerController`
