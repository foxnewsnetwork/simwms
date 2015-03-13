`import PixiIsometricContainer from '../../../utils/pixi-isometric-container'`
`import PixiPosition from '../../../utils/pixi-position'`
module 'PixiIsometricContainer'

unwrap = (xs) -> _.flatten xs, true
positions = [] 
for y in [0..5]
  for x in [-2..2]
    positions.push PixiPosition.create x: x, y: y

sprites = positions.map (p) -> isometricTilePosition: p

class FauxContainer
  constructor: ->
    @xs = []
  addChild: (x) ->
    @xs.push x
  addChildAt: (x, ind) ->
    @xs.insertAt ind, x
  stringify: ->
    @xs
      .map (x) -> x.isometricTilePosition.get("order")
      .toString()

# Replace this with your real tests.
test 'it works', ->
  ok PixiIsometricContainer

test 'pixi positions, when properly initialized, should have order', ->
  p = PixiPosition.create y: 3, x: -3
  equal p.get("order"), 6

test "the sprites should have isometricTilePosition", ->
  ok sprite.isometricTilePosition? for sprite in sprites

test "the positions should have order", ->
  ok position.get("order")? for position in positions

test "the positions should have x", ->
  ok position.get("x")? for position in positions

test "the sprites should have order", ->
  ok sprite.isometricTilePosition.get("order")? for sprite in sprites

test 'it should queue up stuff in proper order', ->
  ctn = new PixiIsometricContainer()
  ctn.addChild sprite for sprite in sprites
  ctn.setContainer new FauxContainer()
  equal ctn.container.stringify(), "-2,-1,-1,0,0,0,1,1,1,1,2,2,2,2,2,3,3,3,3,3,4,4,4,4,5,5,5,6,6,7"
