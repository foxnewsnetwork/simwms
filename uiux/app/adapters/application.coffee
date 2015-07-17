`import DS from 'ember-data'`
`import PhoenixChan from 'ember-phoenix-chan'`

ApplicationAdapter = DS.ActiveModelAdapter.extend # PhoenixChan,
  namespace: "apiv2"
  socketNamespace: "apiv2"
  socketHost: "ws://localhost:4000"

`export default ApplicationAdapter`