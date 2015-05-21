`import Ember from 'ember'`
`import D3TilesComponent from './d3-tiles'`
D3StationsComponent = D3TilesComponent.extend
  width: 2.25
  height: 1
  classNames: ['hidden']
  svgClassName: 'station'
  svgTagName: "rect"

  watchDrawSVG: Ember.observer "layer", "models.@each.x", "models.@each.status", ->
    Ember.run.throttle @, @drawSVG, 200, false

  drawSVG: ->
    stations = @d3Models()

    stations
    .enter().append "g"
    .call @positionGroup.bind @
    .call @interactGroup.bind @
    .call @setupRect.bind @
    .call @setupText.bind @

    stations
    .exit().remove()

  setupText: (group) ->
    group.append "text"
    .text ({id, status}) -> 
      "station no.#{id}"  

`export default D3StationsComponent`