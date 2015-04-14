`import Ember from 'ember'`
`import { module, test } from 'qunit'`
`import startApp from '../helpers/start-app'`
`import validator from 'apiv1/validators/weighticket'`

application = null
container = null
store = null
module 'Acceptance: WeighticketValidator',
  beforeEach: ->
    application = startApp()
    ###
    Don't return as Ember.Application.then is deprecated.
    Newer version of QUnit uses the return value's .then
    function to wait for promises if it exists.
    ###
    container = application.__container__
    store = container.lookup("store:main")
    return

  afterEach: ->
    Ember.run application, 'destroy'

test 'it exists', (assert) ->
  assert.ok validator
  assert.equal typeof validator, "function"

test 'it should work currently on a real DS model', (assert) ->
  Ember.run ->
    weighticket = store.createRecord "weighticket"
    validator weighticket
    .then (validTicket) ->
      assert.ok false, "it shouldn't pass a blank ticket"
    .catch (errors) ->
      assert.equal errors.size, 4
      assert.deepEqual errors.get("appointmentNumber"), ["cannot be blank"]
      assert.deepEqual errors.get("pounds"), ["cannot be blank"]
      assert.deepEqual errors.get("licensePlate"), ["cannot be blank"]
      assert.deepEqual errors.get("targetDock"), ["cannot be blank"]

test 'it should attemp the store', (assert) ->
  Ember.run ->
    weighticket = store.createRecord "weighticket",
      targetDock: "fudgepackers"
      appointmentNumber: "nosuchappointment"
    validator weighticket
    .then (validTicket) ->
      assert.ok false, "it shouldn't pass a blank ticket"
    .catch (errors) ->
      assert.equal errors.size, 4
      assert.deepEqual errors.get("appointmentNumber"), ["the appointment number: nosuchappointment doesn't exist"]
      assert.deepEqual errors.get("pounds"), ["cannot be blank"]
      assert.deepEqual errors.get("licensePlate"), ["cannot be blank"]
      assert.deepEqual errors.get("targetDock"), ["the dock number: fudgepackers doesn't exist"]