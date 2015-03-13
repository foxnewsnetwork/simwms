`import Ember from 'ember'`
`import { initialize } from '../../../initializers/trucks'`

ctn1 = null
app1 = null

ctn2 = null
app2 = null

wait = (time, f) -> setTimeout f, time

module 'TrucksInitializer',
  setup: ->
    Ember.run ->
      app1 = Ember.Application.create()
      ctn1 = app1.__container__
      app1.deferReadiness()

      app2 = Ember.Application.create()
      ctn2 = app2.__container__
      app2.deferReadiness()



# Replace this with your real tests.
test 'things should be tied together', ->
  Ember.run ->
    app1.advanceReadiness()
    app2.advanceReadiness()

    initialize ctn1, app1
    initialize ctn2, app2
    # you would normally confirm the results of the initializer here
    ok trucks1 = ctn1.lookup("io:trucks")
    ok trucks2 = ctn2.lookup("io:trucks")

    store1 = ctn1.lookup("store:main")
    stop()
    store1.createRecord("truck", speed: 420).save()
    wait 250, =>
      equal trucks2.get("length"), 1
      equal trucks1.get("length"), 1
      start()
