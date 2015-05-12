`import Ember from 'ember'`
`import { describe, it, beforeEach, afterEach } from 'mocha'`
`import { expect, assert } from 'chai'`
`import startApp from '../helpers/start-app'`
`import moment from 'moment'`

application = null
container = null
store = null
trackSeed = null
rightNow = -> moment().format()
lll = (x) ->
  console.log x
  x

describe 'Acceptance: MainWorkflow', ->
  beforeEach ->
    application = startApp()
    container = application.__container__
    store = container.lookup("store:main")
    trackSeed = Math.random()
    visit "/"

  afterEach ->
    Ember.run application, 'destroy'

  describe "going to logistics", ->
    beforeEach ->
      click "a[href=\"/logistics\"]"

    it "should land me in the logistics page", ->
      andThen ->
        expect(currentPath()).to.equal "logistics.appointments.index"

    describe "going to new appointments", ->
      beforeEach ->
        click "a[href^=\"/logistics/appointments/new\"]"

      it "should land me on the new appointments page", ->
        andThen ->
          expect currentPath()
          .to.equal "logistics.appointments.new"

      describe "making a new appointment", ->
        beforeEach ->
          fillIn "input[name=\"company\"]", "acceptance test company - #{trackSeed}"
          fillIn "input[name=\"materialDescription\"]", "desc - #{trackSeed}"
          fillIn "input[name=\"expectedAt\"]", rightNow()
          fillIn "textarea[name=\"notes\"]", "notes - #{trackSeed}"
          click "button[type=\"submit\"]"

        it "should create an appointment and redirect to appointment index", ->
          appointment = container.lookup("controller:logistics/appointments/new").get "model"
          andThen ->
            assert.ok appointment, "the appointment should exist"

            expect appointment?.constructor?.typeKey
            .to.equal "appointment"

            expect appointment.get 'company'
            .to.equal "acceptance test company - #{trackSeed}"

            expect appointment.get 'isLoaded'
            .to.be.true

            expect appointment.get 'isNew'
            .to.be.false

            expect currentPath()
            .to.equal "logistics.appointments.index"