`import DSC from 'ember-data-complex'`

BarnStrategy = DSC.Strategy.extend DSC.FallbackCacheTactic, DSC.CreativeDelegationTactic,
  order: ['fire', 'rail']
    
`export default BarnStrategy`