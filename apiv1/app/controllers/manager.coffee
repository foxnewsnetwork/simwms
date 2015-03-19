`import Ember from 'ember'`

ManagerController = Ember.Controller.extend
  iomessages: Ember.computed.alias("model")
  
`export default ManagerController`
