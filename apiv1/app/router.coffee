`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource "contracts", path: "/contracts", ->
  @resource "employees", path: "/employees", ->
  @resource "inventories", path: "/inventories", ->
  @resource "statuses", path: "/statuses", ->
    @route "debug"
  @resource "cameras", path: "/cameras", ->
  @resource "truck", path: "/truck/:truck_id", ->
  @resource "scale", path: "/scale/:scale_id", ->
    @route "form"
  @resource "barn", path: "/barn/:barn_id", ->
    @route "form"

`export default Router`