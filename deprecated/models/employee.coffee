`import DS from 'ember-data'`

Employee = DS.Model.extend
  name: DS.attr "string"
  role: DS.attr "string"
  

`export default Employee`
