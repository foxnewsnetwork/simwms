`import Ember from 'ember'`
`import { startOfWorkday, finishOfWorkday } from 'uiux/utils/punch-card'`

processMacro = (params) ->
  {macro} = params
  switch macro
    when "today"
      params["expected_at_start"] = startOfWorkday().format()
      params["expected_at_finish"] = finishOfWorkday().format()
    else "do nothing"
  delete params["macro"]
  params

StationsStationIndexRoute = Ember.Route.extend
  model: ->
    Ember.RSVP.hash
      station: @modelFor "stations.station"
      appointments: @store.find "appointment", processMacro macro: "today"

`export default StationsStationIndexRoute`
