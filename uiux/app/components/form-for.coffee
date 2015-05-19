`import Ember from 'ember'`

FormForComponent = Ember.Component.extend
  classNames: ['form-for']
  formData: ->
    @$("form").serializeArray()

  processNewData: ->
    _.partial _.foldl, @formData(), (memo, next) ->
      memo.set next.name, next.value
      memo
      
  updatedModel: ->
    @processNewData() Ember.getWithDefault(@, "model", new Ember.Object())
  
  displayErrors: Ember.observer "errors", "errors.size", ->
    @resetErrorFields()
    @explainErrorFields()

  resetErrorFields: ->
    @$(".input-section").removeClass "error"
    @$("small.error").remove()

  explainErrorFields: ->
    errors = @get "errors"
    return if Ember.isBlank errors
    _.forEach @namedInputFields(), (name) =>
      input$ = @$(".input-section[attr-name=#{name}]").addClass "error"
      messages = Ember.getWithDefault errors, Ember.camelize(name), []
      messages.forEach (message) ->
        input$.append "<small class='error'>#{message}</small>"
  
  namedInputFields: ->
    @$(".input-section")
    .map (index, el) ->
      el.getAttribute "attr-name"
    .filter Ember.isPresent

  actions:
    submit: ->
      @sendAction "submit", @updatedModel()

`export default FormForComponent`