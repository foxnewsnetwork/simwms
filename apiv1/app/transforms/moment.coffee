`import DS from 'ember-data'`
`import moment from 'moment'`

MomentTransform = DS.Transform.extend
  deserialize: (serialized) ->
    moment serialized

  serialize: (deserialized) ->
    deserialized
    .format()

`export default MomentTransform`
