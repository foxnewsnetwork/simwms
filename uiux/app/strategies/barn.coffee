`import DSC from 'ember-data-complex'`

BarnStrategy = DSC.Strategy.extend DSC.FallbackCacheTactic, DSC.CreativeDelegationTactic,
  order: ['fire', 'rail']
  onPush: (masterPromise) ->
    DSC.Arrows.promiseLift masterPromise
    .then (master) ->
      master.get "firePromise"
    
`export default BarnStrategy`