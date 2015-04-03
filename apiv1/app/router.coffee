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
    @resource "stations.station", path: "/station/:station_id", ->
      @route "arrivals"
      @route "departures"
      @route "status"
      @route "problem"

  @resource "docks", path: "/docks", ->
    @route "inventory"
    @resource "dock", path: "/dock/:dock_id", ->
      @route "status"
      @route "problem"
      

  @resource "manager", path: "/manager", ->    
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
    @resource "inventories", path: "/inventories", ->
      @resource "inventories.cell", path: "/cell/:cell_id", ->
    @resource "statuses", path: "/statuses", ->
      @route "debug"
      @route "options"
    @resource "cameras", path: "/cameras", ->
    @resource "truck", path: "/truck/:truck_id", ->
    @resource "scale", path: "/scale/:scale_id", ->
      @route "form"
    @resource "barn", path: "/barn/:barn_id", ->
      @route "form"

`export default Router`