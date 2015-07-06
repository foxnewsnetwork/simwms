`import Ember from 'ember'`
`import {withinWorkingHours} from 'uiux/utils/punch-card'`

LogisticsAppointmentsController = Ember.ArrayController.extend
  queryParams:[
    "macro"
    "page"
    "per"
  ]
  macro: "all"
  page: 1
  perPage: 10
  pageBinding: "content.page"
  perPageBinding: "content.perPage"
  totalPagesBinding: "content.totalPages"

  withinWorkingHours: Ember.computed "clock.rightNow", ->
    withinWorkingHours moment @get "clock.rightNow"


`export default LogisticsAppointmentsController`
