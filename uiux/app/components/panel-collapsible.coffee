`import Ember from 'ember'`

PanelCollapsibleComponent = Ember.Component.extend
  classNames: ["panel", "panel-collapsible"]
  classNameBindings: ["isActive:panel-primary:panel-default"]
  activationKey: "id"
  init: ->
    @_super arguments...
    key = @get "activationKey"
    @isActive = Ember.computed "model.#{key}", "active", ->
      id = @get("model.#{key}")
      id is @get("active")

  actions:
    clickHeader: ->
      @sendAction 'action', @get("model")
  

`export default PanelCollapsibleComponent`