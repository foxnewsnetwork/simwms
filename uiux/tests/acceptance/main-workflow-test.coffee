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
  fireTruckId: null
  entranceId: null
  dockId: null
  exitId: null
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
      andAfterward ->
        expect(currentPath()).to.equal "logistics.appointments.index"

    describe "going to new appointments", ->
      before ->
        click "a[href^=\"/logistics/appointments/new\"]"

      it "should land me on the new appointments page", ->
        andAfterward ->
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
          andAfterward => 
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
      andAfterward -> done()

    it "should land me in the stations index page", ->
      expect currentPath()
      .to.equal "stations.index"

    describe "going to entry station", ->
      before (done) ->
        click ".entry-stations a"
        andAfterward -> 
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
        expect find("tr[data-appointment-id=\"#{workFlow.appointmentId}\"]").text()
        .to.have.string trackSeed

      describe "a truck has arrived for its appointment", ->
        before (done) ->
          console.log "tr[data-appointment-id=\"#{workFlow.appointmentId}\"]"
          click "tr[data-appointment-id=\"#{workFlow.appointmentId}\"]"
          andAfterward -> done()

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
            andAfterward => 
              workFlow.weighticketId = @weighticket.get "id"
              done()

          it "should be properly loaded", ->
            expect @weighticket.get 'isLoaded'
            .to.be.true

          it "should therefore no longer be new", ->
            expect @weighticket.get 'id'
            .to.match /\d+/

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
              andAfterward -> done()

            it 'should take me page where I am presented with instructions', ->
              expect currentPath()
              .to.equal "stations.weighticket.trucks.new"

            describe "creating a new truck", ->
              before (done) ->
                click ".btn-success"
                @truck = container.lookup("controller:stations/weighticket/trucks/new").get "model"
                andAfterward =>
                  workFlow.truckId = @truck.get "id"
                  @truck.get "fire"
                  @truck.get "firePromise"
                  .then (fire) ->
                    workFlow.fireTruckId = fire.get "id"
                    done()

              it "should have loaded a truck", ->
                expect @truck.get "isLoaded"
                .to.be.true

              it "should have the proper dockId", ->
                @truck.get "fire"
                .then (fire) =>
                  workFlow.dockId = fire.get "dockId"
                  expect workFlow.dockId
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

  context "loading dock", ->
    before (done) ->
      visit "/"
      click "a[href=\"/docks\"]"
      andAfterward -> done()

    it "should land me in the docks index", ->
      expect currentPath()
      .to.equal "docks.index"

    it "should have prepared a dock id for me", ->
      expect workFlow.dockId
      .to.match /\d+/

    describe "going to my dock", ->
      before (done) ->
        click "a[href=\"/docks/dock/#{workFlow.dockId}\"]"
        andAfterward => 
          @dock = container.lookup("controller:docks/dock").get "model"
          done()

      it "should have retrieved a dock", ->
        expect @dock
        .to.be.ok

      it "should land me at my dock index", ->
        expect currentPath()
        .to.equal "docks.dock.index"

      it "will be in use", ->
        @dock.get("fire")
        .then (fire) ->
          expect fire.get "isInUse"
          .to.be.ok

      it "should be waiting for the right truck", ->
        @dock.get "fire"
        .then (fire) ->
          expect fire.get "truckId"
          .to.equal workFlow.truckId

      it "should inform the user the truck is there", ->
        expect find(".panel-heading").text()
        .to.have.string "truck at this dock"

      describe "going to the truck", ->
        before (done) ->
          click "a.btn-success"
          andAfterward -> done()

        it "should take me to the truck arrival page", ->
          expect currentPath()
          .to.equal "docks.truck.arrive"

        it "should be the truck from the correct appointment", ->
          expect find(".panel-heading").text()
          .to.have.string workFlow.appointmentId

        describe "unloading a pallet", ->
          before (done) ->
            click "a[href*=\"batches/new\"]"
            andAfterward -> done()

          it "should take me to the new pallet batch page", ->
            expect currentPath()
            .to.equal "docks.truck.batches.new"

          describe "making a new batch", ->
            before (done) ->
              fillIn "textarea[name=\"description\"]", "batch description - #{trackSeed}"
              click "button[type=\"submit\"]"
              @batch = container.lookup("controller:docks/truck/batches/new").get "model"
              andAfterward =>
                workFlow.batchIds.pushObject @batch.get "id"
                done()

            it "should create a new batch", ->
              expect @batch.get "id"
              .to.be.ok

            it "should be properly loaded", ->
              expect @batch.get "isLoaded"
              .to.be.true

            it "should have the correct appointmentId", ->
              expect @batch.get "appointmentId"
              .to.equal workFlow.appointmentId

            it "should have the correct warehouseId", ->
              expect @batch.get "warehouseId"
              .to.be.ok

            it "should have the correct weighticketId", ->
              expect @batch.get "weighticketId"
              .to.equal workFlow.weighticketId

            it "should have the correct entryDockId", ->
              expect @batch.get "entryDockId"
              .to.equal workFlow.dockId

            it "should land me in bale instruction page", ->
              expect currentPath()
              .to.equal 'docks.batch.index'

            describe "back to the truck", ->
              before (done) ->
                click "a[href^=\"/docks/truck\"]"
                andAfterward -> done()

              it "should take me back to the truck arrival page", ->
                expect currentPath()
                .to.equal "docks.truck.arrive"

              describe "readying truck for departure", ->
                before (done) ->
                  click "a[href$=\"/depart\"]"
                  andAfterward -> done()

                it "should take me to depart instruction page", ->
                  expect currentPath()
                  .to.equal "docks.truck.depart"

                describe "truck departs dock", ->
                  before (done) ->
                    click "button.btn-success"
                    @dock = container.lookup("controller:docks/dock/index").get "model"
                    @truck = container.lookup("controller:docks/truck/depart").get "model"
                    andAfterward -> done()

                  it "the dock should no longer be busy", ->
                    expect @dock.get "isInUse"
                    .to.be.false

                  it "the dock should be free", ->
                    expect @dock.get "isOkay"
                    .to.be.true

                  it "should change the truck's position", ->
                    @truck.get "fire"
                    .then (fire) ->
                      expect fire.get "position"
                      .to.equal "going to exit"

                  it "should redirect to the dock index", ->
                    expect currentPath()
                    .to.equal "docks.dock.index"

  context "exit station", ->
    before (done) ->
      visit "/"
      click "a[href=\"/stations\"]"
      andAfterward -> done()

    it "should land me in the stations index", ->
      expect currentPath()
      .to.equal "stations.index"

    describe "going to exit station", ->
      before (done) ->
        click ".exit-stations a"
        andAfterward -> done()

      it "should land me at the exit station", ->
        expect currentPath()
        .to.equal "stations.station.index"

      it "should have the correct header", ->
        expect find(".panel-heading").text()
        .to.have.string "exit"

      it "should have the truck I want here", ->
        expect find("tr[data-truck-id=\"#{workFlow.truckId}\"]").text()
        .to.have.string trackSeed

      describe "going to truck", ->
        before (done) ->
          click "tr[data-truck-id=\"#{workFlow.truckId}\"]"
          andAfterward -> done()

        it "should lead me to the departure page", ->
          expect currentPath()
          .to.equal "stations.truck.departure"

        describe "weighing the truck again", ->
          before (done) ->
            click "button.btn-success"
            andAfterward -> done()

          it "should take me to the completion page", ->
            expect currentPath()
            .to.equal "stations.truck.complete"

          describe "generating the complete ticket", ->
            before (done) ->
              fillIn "input[name=\"finishPounds\"]", 45000
              click "button[type=\"submit\"]"
              @truck = container.lookup("controller:stations.truck.complete").get "model"
              andAfterward -> done()

            it "should take me to the exit page", ->
              expect currentPath()
              .to.equal "stations.truck.exit"

            it "should have a proper finish attr", ->
              @truck.get "weighticketPromise"
              .then (weighticket) ->
                assert.equal weighticket.get("finishPounds"), 45000, "the pounds should be right"
                assert.ok weighticket.get("finisherId"), "there should be a exit scale id"

            describe "killing the truck", ->
              before (done) ->
                click "button.btn-default"
                andAfterward -> done()

              it "should redirect me the index", ->
                expect currentPath()
                .to.equal "stations.station.index"

              it "should destroy the truck from firebase", ->
                Ember.run ->
                  store.find "truck", workFlow.truckId
                  .catch (error) ->
                    expect error.message
                    .to.have.string "no record was found"

              it "should destroy the fire truck from firebase also", ->
                Ember.run ->
                  store.find "fire/truck", workFlow.fireTruckId
                  .catch (error) ->
                    expect error.message
                    .to.have.string "no record was found"