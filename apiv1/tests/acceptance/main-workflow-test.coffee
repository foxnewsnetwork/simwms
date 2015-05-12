`import Ember from 'ember'`
`import { describe, it, beforeEach, afterEach, before, after } from 'mocha'`
`import { expect, assert } from 'chai'`
`import startApp from '../helpers/start-app'`
`import moment from 'moment'`

application = null
container = null
store = null
trackSeed = null
workFlow =
  appointmentId: null
  weighticketId: null
  truckId: null
  entranceId: null
  batchIds: []
wait = (time, action) ->
  Ember.run.later action, time
rightNow = -> moment().format "YYYY-MM-DDTHH:mm"
lll = (x) ->
  console.log x
  x

describe 'Acceptance: MainWorkflow', ->
  before ->
    application = startApp()
    container = application.__container__
    store = container.lookup("store:main")
    trackSeed = Math.floor Math.random() * 100000

  after ->
    Ember.run application, 'destroy'

  context "logistics", ->
    before ->
      visit "/"
      click "a[href=\"/logistics\"]"

    it "should land me in the logistics page", ->
      andThen ->
        expect(currentPath()).to.equal "logistics.appointments.index"

    describe "going to new appointments", ->
      before ->
        click "a[href^=\"/logistics/appointments/new\"]"

      it "should land me on the new appointments page", ->
        andThen ->
          expect currentPath()
          .to.equal "logistics.appointments.new"

      describe "making a new appointment", ->
        before (done) ->
          fillIn "input[name=\"company\"]", "acceptance test company - #{trackSeed}"
          fillIn "input[name=\"materialDescription\"]", "desc - #{trackSeed}"
          fillIn "input[name=\"expectedAtISO\"]", rightNow()
          fillIn "textarea[name=\"notes\"]", "notes - #{trackSeed}"
          click "button[type=\"submit\"]"
          @appointment = container.lookup("controller:logistics/appointments/new").get "model"
          andThen => 
            workFlow.appointmentId = @appointment.get "id"
            done()

        it "should have an appointment on the controller", ->
          assert.ok @appointment, "the appointment should exist"

        it "should be the proper model", ->
          expect @appointment?.constructor?.typeKey
          .to.equal "appointment"

        it "should have the correct attributes", ->
          expect @appointment.get 'company'
          .to.equal "acceptance test company - #{trackSeed}"

        it "should have properly persisted the date", ->
          expect moment.isMoment @appointment.get('expectedAt')
          .to.be.true

        it "should be properly loaded", ->
          expect @appointment.get 'isLoaded'
          .to.be.true

        it "should therefore no longer be new", ->
          expect @appointment.get 'isNew'
          .to.be.false

        it "should redirect us back to the index page", ->
          expect currentPath()
          .to.equal "logistics.appointments.index"

  context "scale station", ->
    before (done) ->
      visit "/"
      click "a[href=\"/stations\"]"
      andThen -> done()

    it "should land me in the stations index page", ->
      expect currentPath()
      .to.equal "stations.index"

    describe "going to entry station", ->
      before (done) ->
        click ".entry-stations a"
        andThen -> 
          workFlow.entranceId = container.lookup("controller:stations/station").get("model.id")
          done()

      it "should land me in a station page", ->
        expect currentPath()
        .to.equal "stations.station.index"

      it "should have a proper station id", ->
        expect workFlow.entranceId
        .to.be.ok

      it "should be the entrance station", ->
        expect find(".panel-heading").text()
        .to.match /entrance weight station/i

      it "should have the proper appointment", ->
        expect find("tr.appointment-row:last-child").text()
        .to.have.string trackSeed

      describe "a truck has arrived for its appointment", ->
        before (done) ->
          click "table.appointments tr:last-child"
          andThen -> done()

        it "should land me in the weighticket creation page", ->
          expect currentPath()
          .to.equal "stations.station.weightickets.new"

        it "should prefill the appointmentNumber input field", ->
          expect find("input[name=\"appointmentNumber\"]").val()
          .to.have.string trackSeed

        it "should suggest an ok dock eventually", ->
          wait 200, ->
            expect find("select[name=\"targetDock\"] option:selected").text()
            .to.have.string "ok"

        describe "making a weighticket", ->
          before (done) ->
            fillIn "input[name=\"licensePlate\"]", "weighticket-#{trackSeed}"
            fillIn "input[name=\"pounds\"]", 44000
            fillIn "textarea[name=\"notes\"]", "weighticket notes of #{trackSeed}"
            click "button[type=\"submit\"]"
            @weighticket = container.lookup("controller:stations/station/weightickets/new").get "model"
            andThen => 
              workFlow.weighticketId = @weighticket.get "id"
              done()

          it "should be properly loaded", ->
            expect @weighticket.get 'isLoaded'
            .to.be.true

          it "should therefore no longer be new", ->
            expect @weighticket.get 'isNew'
            .to.be.false

          it "should belong to the proper appointment", ->
            expect @weighticket.get "appointmentNumber"
            .to.equal workFlow.appointmentId

          it "should be issued by the correct scale", ->
            expect @weighticket.get "issuerId"
            .to.equal workFlow.entranceId

          it "should have the proper plate field", ->
            expect @weighticket.get "licensePlate"
            .to.equal "weighticket-#{trackSeed}"

          it "should have taken me to the weighticket print page", ->
            expect currentPath()
            .to.equal "stations.weighticket.print"

          describe "giving the ticket to the driver", ->
            before (done) ->
              click ".btn-primary"
              andThen -> done()

            it 'should take me page where I am presented with instructions', ->
              expect currentPath()
              .to.equal "stations.weighticket.trucks.new"

            describe "creating a new truck", ->
              before (done) ->
                click ".btn-success"
                @truck = container.lookup("controller:stations/weighticket/trucks/new").get "model"
                console.log @truck
                andThen =>
                  workFlow.truckId = @truck.get "id"
                  done()

              it "should have loaded a truck", ->
                expect @truck.get "isLoaded"
                .to.be.true

              it "should have the proper dockId", ->
                @truck.get "fire"
                .then (fire) =>
                  expect fire.get "dockId"
                  .to.be.ok

              it "should have the proper appointmentId", ->
                @truck.get "fire"
                .then (fire) ->
                  expect fire.get "appointmentId"
                  .to.equal workFlow.appointmentId

              it "should have the proper weighticketId", ->
                @truck.get "fire"
                .then (fire) ->
                  expect fire.get "weighticketId"
                  .to.equal workFlow.weighticketId

              it "should have the proper entryScaleId", ->
                @truck.get "fire"
                .then (fire) ->
                  expect fire.get "entryScaleId"
                  .to.equal workFlow.entranceId

              it "should transition to the station index", ->
                expect currentPath()
                .to.equal "stations.station.index"