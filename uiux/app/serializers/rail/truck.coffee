`import RailSerializer from '../rail'`

RailTruckSerializer = RailSerializer.extend
  serializeIntoHash: (data, typeClass, snapshot, options) ->
    data.truck = @serialize snapshot, options

`export default RailTruckSerializer`
