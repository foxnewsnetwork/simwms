`import DS from 'ember-data'`
`import PixiPath from '../utils/pixi-path'`
`import FunEx from '../utils/fun-ex'`
`import DebugEx from '../utils/debug-ex'`

Truck = DS.Model.extend
  speed: DS.attr "number"
  status: DS.attr "string"
  origination: DS.attr "string"
  origintype: DS.attr "string"
  destination: DS.attr "string"
  destinytype: DS.attr "string"
  arrivedAt: DS.attr "date"
  departedAt: DS.attr "date"

  isEmpty: true
  enterBarn: ->
    @set "departedAt", new Date()
    @save()

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
