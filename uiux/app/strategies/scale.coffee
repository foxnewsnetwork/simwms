`import DSC from 'ember-data-complex'`

ScaleStrategy = DSC.Strategy.extend DSC.FallbackCacheTactic, DSC.CreativeDelegationTactic,
  order: ['fire', 'rail']
  
`export default ScaleStrategy`