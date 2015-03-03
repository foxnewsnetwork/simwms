`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource "logistics", path: "/logistics", ->
    @route "inventory"
    @resource "appointment", path: "/appointment", ->
      @route "new"

  @resource "scalemaster", path: "/scalemaster/:scalemaster_id", ->
    @resource "weighticket", path: "/weighticket", ->
      @route "new"
  @resource "dockworker", path: "/dockworker/:dockworker_id", ->
    @route "status"
    @route "inventory"
  @resource "manager", path: "/manager", ->    
    @resource "contracts", path: "/contracts", ->
    @resource "employees", path: "/employees", ->
    @resource "inventories", path: "/inventories", ->
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