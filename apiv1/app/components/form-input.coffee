`import Ember from 'ember'`

FormInputComponent = Ember.Component.extend
  classNames: ['form-input', 'input-section', 'form-group']
  attributeBindings: ['attr-name']
  "attr-name": Ember.computed.alias("name")

  shouldInputGroup: Ember.computed.or("suffix", "prefix")

`export default FormInputComponent`
