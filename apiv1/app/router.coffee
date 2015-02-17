`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource "contracts", path: "/contracts", ->
  @resource "employees", path: "/employees", ->
  @resource "inventories", path: "/inventories", ->
  @resource "statuses", path: "/statuses", ->
  @resource "cameras", path: "/cameras", ->
  @resource "truck", path: "/truck/:truck_id", ->
  @resource "scale", path: "/scale/:scale_id", ->
  @resource "barn", path: "/barn/:barn_id", ->

`export default Router`