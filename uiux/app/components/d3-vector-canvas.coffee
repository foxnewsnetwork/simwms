`import Ember from 'ember'`

assertNumericality = (x) ->
  Ember.assert "Expected a number, instead got #{x}", x <= 0 or x > 0
  x

extractPositionFromString = (string) ->
  /translate\((\-?\d+\.?\d*)\s*,\s*(\-?\d+\.?\d*)\)/g
  .exec string
  .slice 1
  .map parseFloat
  .map assertNumericality

presentTransformPosition = (element) ->
  extractPositionFromString d3.select(element).attr "transform"

D3VectorCanvasComponent = Ember.Component.extend
  classNames: ['d3-vector-canvas']
  attributeBindings: ["width", "height"]

  init: ->
    @_super arguments...
    @deferSVG = Ember.RSVP.defer()

  didInsertElement: ->
    @deferSVG.resolve @buildCanvas()

  makeDragBehavior: ->
    d3.behavior.drag()
    .origin -> 
      x: 0
      y: 0
    .on "drag", ->
      d3.select @
      .select "g.master-canvas"
      .attr "transform", ->
        [x0, y0] = presentTransformPosition @
        {dx, dy} = d3.event
        x1 = x0 - dx / 2
        y1 = y0 - dy / 2
        "translate(#{x1}, #{y1})"

  buildCanvas: ->
    d3.select @$()[0]
    .append "svg"
    .call @makeDragBehavior()
    .append "g"
    .attr "class", "master-canvas"
    .attr "transform", @defaultCanvasTransform()

  defaultCanvasTransform: ->
    x = @canvasHalfWidth() - 125
    y = @canvasHalfHeight() + 125
    "translate(#{x}, #{y})"
    
  canvasHalfWidth: ->
    assertNumericality @$().width() / 2
    
  canvasHalfHeight: ->
    assertNumericality @$().height() / 2

  willDestroyElement: ->
    @deferSVG.promise.then (svg) -> svg.remove()

`export default D3VectorCanvasComponent`