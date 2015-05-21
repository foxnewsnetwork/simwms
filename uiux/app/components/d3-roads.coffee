`import Ember from 'ember'`
`import D3TilesComponent from './d3-tiles'`

D3RoadsComponent = D3TilesComponent.extend
  width: 1
  height: 1
  svgTagName: "rect"
  svgClassName: "road"
  watchDrawSVG: Ember.observer "layer", "models.@each.x", ->
    Ember.run.throttle @, @drawSVG, 200, false

  d3Models: ->
    data = @normalize @get "models"
    console.log data
    @get "layer"
    .selectAll ".#{@svgClassName}"
    .data data

  drawSVG: ->
    @d3Models()
    .enter().append "g"
    .call @positionGroup.bind @
    .call @setupRect.bind @

  positionGroup: (group) ->
    group
    .attr "class", @svgClassName
    .attr "transform", ({x,y}) => 
      w = @get "widthPx"
      h = @get "heightPx"
      "translate(#{x - w}, #{y - h / 2.5 })"

  setupRect: (group) ->
    group.append @get "svgTagName"
    .attr "x", - @get("widthPx") / 2
    .attr "y", - @get("heightPx") / 2
    .attr "width", @get("widthPx")
    .attr "height", @get("heightPx")
    .attr "stroke", "#424242"
    .attr "fill", "#424242"

`export default D3RoadsComponent`