`import DS from 'ember-data'`

CoordinateTransform = DS.Transform.extend
  deserialize: (serialized) ->
    assertValidity JSON.parse serialized

  serialize: (x:x, y:y) ->
    JSON.stringify assertValidity x:x, y:y

assertValidity = (x:x, y:y) ->
  throw new BadCoordinateError("x", x) unless _.isFinite(x)
  throw new BadCoordinateError("y", y) unless _.isFinite(y)
  x:x
  y:y

class BadCoordinateError extends Error
  name: "BadCoordinateError"
  constructor: (coord, val) ->
    @message = "Expected a finite value for #{coord}, but instead got #{val}"
`export default CoordinateTransform`
