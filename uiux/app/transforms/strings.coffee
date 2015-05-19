`import DS from 'ember-data'`

StringsTransform = DS.Transform.extend
  deserialize: (serialized) ->
    serialized.toString()
    .split(",")
    .map (string) -> string.trim()

  serialize: (deserialized) ->
    Ember.A deserialized
    .join(",")

`export default StringsTransform`
