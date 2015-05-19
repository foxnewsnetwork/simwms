`import DS from 'ember-data'`

RailSerializer = DS.ActiveModelSerializer.extend
  normalizePayload: (payload) ->
    for key, value of payload
      payload["rail/#{key}"] = value
      delete payload[key]
    payload

`export default RailSerializer`
