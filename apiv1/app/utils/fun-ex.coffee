`import Ember from 'ember'`

class FunEx
  @computed = ->
    [deps..., fun] = arguments
    ff = Ember.computed(fun)
    ff.property.apply ff, deps

  @volatile = (f) ->
    Ember.computed(f).volatile()

  @observed = ->
    [fields..., fun] = arguments
    fun.observes.apply fun, fields

  @isBlank = Ember.isBlank

  @isPresent = (x) -> not Ember.isBlank x

`export default FunEx`
