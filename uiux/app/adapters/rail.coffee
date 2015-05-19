`import DS from 'ember-data'`

RailAdapter = DS.ActiveModelAdapter.extend
  namespace: 'apiv1'
  pathForType: (type) ->
    [..., basetype] = type.split("/")
    @_super basetype

`export default RailAdapter`
