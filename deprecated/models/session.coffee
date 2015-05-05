`import DS from 'ember-data'`

Session = DS.Model.extend
  email: DS.attr "string"
  password: DS.attr "string"
  role: DS.attr "string"

`export default Session`
