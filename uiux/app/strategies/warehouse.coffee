`import DSC from 'ember-data-complex'`

WarehouseStrategy = DSC.Strategy.extend DSC.FallbackCacheTactic, DSC.CreativeDelegationTactic,
  order: ['fire', 'rail']
  
`export default WarehouseStrategy`