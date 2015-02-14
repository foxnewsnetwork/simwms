`import Ember from 'ember'`
`import FunEx from './fun-ex'`
`import Arrows from './arrows'`
`import normalizePoint from './normalize-point'`

cos = (deg) -> Math.cos deg * Math.PI / 180
sin = (deg) -> Math.sin deg * Math.PI / 180
[a11, a12, a21, a22] = [cos(30), cos(30), sin(-30), sin(30)]

# Maps tile coordinates to pixel coordinates
PixiCamera = Ember.Object.extend
  x: 0
  y: 0
  zoom: 1
  init: ->
    @_super()
    @transformProcess = Arrows.lift normalizePoint
      .compose @makeUnitTile2tile()
      .compose @tile2AbsPx
      .compose @makeAbsPx2camPx()

  makeUnitTile2tile: ->
    Arrows.lift ([x,y]) =>
      tileX: x * @get("zoom") * 74
      tileY: y * @get("zoom") * 74

  tile2AbsPx: Arrows.lift ({tileX: x, tileY: y}) ->
    x: a11 * x + a12 * y
    y: a21 * x + a22 * y

  makeAbsPx2camPx: -> 
    Arrows.lift ({x: x, y: y}) =>
      x: x + @get("deltaX")
      y: y + @get("deltaY")

  deltaX: FunEx.computed "x", "zoom", ->
    @get("x") * @get("zoom")

  deltaY: FunEx.computed "y", "zoom", ->
    @get("y") * @get("zoom")

  tile2px: (tileCoord) ->
    @transformProcess.run tileCoord

`export default PixiCamera`
