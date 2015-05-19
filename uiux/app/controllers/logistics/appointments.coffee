`import Ember from 'ember'`

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

`export default LogisticsAppointmentsController`
