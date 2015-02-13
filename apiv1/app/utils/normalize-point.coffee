`import Ember from 'ember'`

normalizePoint = (point) ->
  switch
    when point instanceof Ember.Object
      x0 = point.get("tileX") or point.get("x") 
      y0 = point.get("tileY") or point.get("y") 
      throw "Ember.Object" unless x0? and y0?
    when point instanceof Array
      [x0, y0] = point
      throw "Array" unless x0? and y0?
    when point instanceof Object
      {x: x0, y: y0} = point
      throw "Object" unless x0? and y0?
    else throw "WOW FUCK YOU"
  [x0, y0]

`export default normalizePoint`
