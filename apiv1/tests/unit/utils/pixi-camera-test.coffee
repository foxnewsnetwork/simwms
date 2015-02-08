`import PixiCamera from '../../../utils/pixi-camera'`

module 'PixiCamera'

# Replace this with your real tests.
test 'it works', ->
  ok PixiCamera

test 'it should properly transform', ->
  camera = PixiCamera.create x: 0, y: 0, zoom: 1
  output = camera.tile2px tileX: 0, tileY: 0
  equal output.x, 0
  equal output.y, 0

test 'it should properly shift if the camera is moved', ->
  camera = PixiCamera.create x: 150, y: 250, zoom: 1
  output = camera.tile2px tileX: 0, tileY: 0
  equal output.x, 150
  equal output.y, 250