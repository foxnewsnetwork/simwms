`import Ember from 'ember'`
`import FunctionalValidation from 'ember-functional-validation'`

appointmentValidator = FunctionalValidation.create
  company:
    presence: true
  materialDescription:
    presence: true
  expectedAt:
    presence: true

`export default appointmentValidator`