`import DS from 'ember-data'`
`import PixiPath from '../utils/pixi-path'`
`import FunEx from '../utils/fun-ex'`

Statuses = ["moving", "idle", "loading", "problem"]
Truck = DS.Model.extend
  status: DS.attr "string"
  arrivedAt: DS.attr "date"
  origination: DS.attr "string"
  origintype: DS.attr "string"
  destination: DS.attr "string"
  destinytype: DS.attr "string"
  weighticketId: DS.attr "string"

  weighticket: FunEx.computed "weighticketId", -> 
    return unless @get("weighticketId")?
    @store.find "weighticket", @get("weighticketId")
  
  speed: 1
  isEmpty: true

  materialDescription: Ember.computed.alias "weighticket.materialDescription"
  appointmentNumber: Ember.computed.alias "weighticket.appointmentNumber"
  licensePlate: Ember.computed.alias "weighticket.licensePlate"


  arrivedAtAgo: FunEx.computed "arrivedAt", ->
    return unless @get("arrivedAt")?
    $.timeago @get "arrivedAt"

  pixiGrid: FunEx.computed "grid.pixiGrid", ->
    return unless @get("grid")?
    return if @get("grid.isPending")
    @get "grid.pixiGrid"
  
  origin: FunEx.computed "origination", "origintype", ->
    return unless @get("origination")? and @get("origintype")?
    @store.find @get("origintype"), @get("origination")

  destiny: FunEx.computed "destination", "destinytype", ->
    return unless @get("destination")? and @get("destinytype")?
    @store.find @get("destinytype"), @get("destination")

  start: FunEx.computed "origin.x", "origin.y", ->
    return unless @get("origin.x")? and @get("origin.y")?
    x: @get("origin.x")
    y: @get("origin.y")

  finish: FunEx.computed "destiny.x", "destiny.y", ->
    return unless @get("destiny.x")? and @get("destiny.y")?
    x: @get("destiny.x")
    y: @get("destiny.y")
  
  path: FunEx.computed "speed", "start.x", "finish.x", "start.y", "finish.y", "pixiGrid", ->
    return unless @get("speed")? and @get("start")? and @get("finish")? and @get("pixiGrid")?
    return unless @get("start.x")? and @get("start.y")? and @get("finish.x")? and @get("finish.y")?
    PixiPath.create
      speed: @get("speed")
      start: @get("start")
      finish: @get("finish")
      grid: @get("pixiGrid")

`export default Truck`
