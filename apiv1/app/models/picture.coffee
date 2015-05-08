`import DS from 'ember-data'`

Picture = DS.Model.extend
  thumbnail: DS.attr "string"
  normal: DS.attr "string"

`export default Picture`
