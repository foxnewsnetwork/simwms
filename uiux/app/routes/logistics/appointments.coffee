`import Ember from 'ember'`
`import RouteMixin from 'ember-cli-pagination/remote/route-mixin'`
`import { startOfWorkday, finishOfWorkday } from 'uiux/utils/punch-card'`

processMacro = (params) ->
  {macro} = params
  switch macro
    when "future"
      params["expected_at_start"] = finishOfWorkday().format()
    when "today"
      params["expected_at_start"] = startOfWorkday().format()
      params["expected_at_finish"] = finishOfWorkday().format()
    else "do nothing"
  delete params["macro"]
  params

LogisticsAppointmentsRoute = Ember.Route.extend RouteMixin,
  queryParams:
    macro:
      refreshModel: true
    page:
      refreshModel: true
    per:
      refreshModel: true
  macro: "all"
  page: 1
  perPage: 10

  model: (params) ->
    @findPaged("appointment", processMacro params)

  actions:
    updateAppointments: ->
      @refresh()
      


`export default LogisticsAppointmentsRoute`
