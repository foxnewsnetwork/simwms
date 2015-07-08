`import Ember from 'ember'`
`import { startOfWorkday, finishOfWorkday } from 'uiux/utils/punch-card'`

AppointmentsCollection = Ember.ArrayProxy.extend
  appointments: Ember.computed.alias "content"

AppointmentsCollection.fromAppointments = (appointments) ->
  AppointmentsCollection.create content: appointments

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

AppointmentsCollection.processMacro = processMacro

`export default AppointmentsCollection`
`export {
  AppointmentsCollection,
  processMacro  
}`