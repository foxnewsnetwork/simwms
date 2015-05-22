`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource "logistics", path: "/logistics", ->
    @resource "logistics.inventories", path: "/inventories", ->
      @resource "logistics.cell", path: "/cell/:cell_id", ->
        @route "pictures"
    @resource "logistics.appointments", path: "/appointments", ->
      @route "new"      
    @resource "logistics.appointment", path: "/appointment/:appointment_id", ->
      @route "edit"
      @route "reschedule"
  
  @resource "stations", path: "/stations", ->
    @resource "stations.weighticket", path: "/weighticket/:weighticketId", ->
      @route "edit"
      @route "print"
      @resource "stations.weighticket.trucks", path: "/trucks", ->
        @route "new"
    @resource "stations.station", path: "/station/:station_id", ->
      @resource "stations.station.weightickets", path: "/weightickets", ->
        @route "new"
      @route "status"
      @route "problem"
    @resource "stations.truck", path: "/truck/:truckId", ->
      @route "departure"
      @route "complete"
      @route "exit"

  @resource "docks", path: "/docks", ->
    @resource "docks.batch", path: "/batch/:batchId", ->
    @resource "docks.inventories", path: "/inventories", ->
      @resource "docks.cell", path: "/cell/:cell_id", ->
        @route "pictures"
    @resource "docks.dock", path: "/dock/:dock_id", ->
      @route "status"
      @route "problem"
    @resource "docks.truck", path: "/truck/:truckId", ->
      @route "arrive"
      @resource "docks.truck.batches", path: "/batches", ->
        @route "new"
      @route "depart"
      

  @resource "manager", path: "/manager", ->    
    @resource "manager.dock", path: "/dock/:dockId", ->
    @resource "manager.station", path: "/station/:stationId", ->
    @resource "manager.inventories", path: "/inventories", ->
      @resource "manager.inventories.cell", path: "/cell/:cell_id", ->
      
    @resource "messages", path: "/messages", ->
    @resource "message", path: "/message/:message_id", ->
      @route Ember.String.dasherize "truck arrived on site"
      @route Ember.String.dasherize "truck at loading dock"
      @route Ember.String.dasherize "truck left dock is free"
      @route Ember.String.dasherize "truck waiting for free dock"
      @route Ember.String.dasherize "truck at exit station"
      @route Ember.String.dasherize "truck has left site"
      @route Ember.String.dasherize "problem"
      @route Ember.String.dasherize "miscellanious"
    @resource "contracts", path: "/contracts", ->
    @resource "employees", path: "/employees", ->
    @resource "statuses", path: "/statuses", ->
      @route "debug"
      @route "options"
    @resource "cameras", path: "/cameras", ->
    @resource "truck", path: "/truck/:truck_id", ->

`export default Router`