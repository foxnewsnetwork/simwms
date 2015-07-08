`import Ember from 'ember'`
`import RouteMixin from 'ember-cli-pagination/remote/route-mixin'`
`import {processMacro} from 'uiux/collections/appointments'`

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
