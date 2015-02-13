manhattanPaths = (pt0, pt1) ->
  return [] unless pt0? and pt1?
  [x0, y0] = pt0
  [x1, y1] = pt1
  deltaY = y1 - y0
  deltaX = x1 - x0
  positions = []
  for dx in [0...deltaX]
    positions.pushObject [x0 + dx, y0]

  for dy in [0..deltaY]
    positions.pushObject [x1, y0 + dy]
  positions

`export default manhattanPaths`
