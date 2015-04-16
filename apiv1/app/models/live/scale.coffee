`import DS from 'ember-data'`
`import Scale from '../scale'`

LiveScale = Scale.extend
  status: DS.attr "string"
  permalink: DS.attr "string"

`export default LiveScale`
