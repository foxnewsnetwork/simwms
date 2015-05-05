`import DS from 'ember-data'`
`import Station from '../station'`

LiveStation = Station.extend
  permalink: DS.attr "string"

`export default LiveStation`
