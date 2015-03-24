`import ApplicationAdapter from './application'`
`import DebugEx from '../utils/debug-ex'`

StableAdapter = ApplicationAdapter.extend
  pathForType: (type) ->
    [..., basetype] = type.split("/")
    @_super basetype
`export default StableAdapter`
