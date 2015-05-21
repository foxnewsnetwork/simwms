`import Ember from 'ember'`
`import D3TilesComponent from './d3-tiles'`
D3DocksComponent = D3TilesComponent.extend
  classNames: ['hidden']
  width: 105
  height: 65
  svgClassName: 'dock'
  svgTagName: "rect"
  
  watchDrawSVG: Ember.observer "layer", "models.@each.status", ->
    Ember.run.throttle @, @drawSVG, 200, false

  drawSVG: ->
    docks = @d3Models()

    docks
    .enter().append "g"
    .call @positionGroup.bind @
    .call @interactGroup.bind @
    .call @setupRect.bind @
    .call @setupText.bind @

    docks
    .exit().remove()

  setupText: (group) ->
    group.append "text"
    .text ({id, status}) -> 
      "dock no.#{id}"

`export default D3DocksComponent`