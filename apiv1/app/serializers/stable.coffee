`import DS from 'ember-data'`

StableSerializer = DS.ActiveModelSerializer.extend
  normalizePayload: (payload) ->
    for key, value of payload
      payload["stable/#{key}"] = value
      delete payload.key
    payload

`export default StableSerializer`
