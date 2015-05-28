`import Ember from 'ember'`
`import D3TilesComponent from './d3-tiles'`
D3DocksComponent = D3TilesComponent.extend
  classNames: ['hidden']
  width: 2
  height: 1
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
    .call @setupTrafficSignal.bind @
    .call @setupText.bind @

    docks
    .exit().remove()

  setupTrafficSignal: (group) ->
    group.append "circle"
    .attr "cx", ({status}) =>
      value = switch status
        when "ok" then 20
        when "in use" then 30
        when "waiting" then 40
        when "problem" then 40
        else 0
      value - @get("widthPx") / 2

    .attr "cy", - @get("heightPx") / 2 + 40
    .attr "r", 8
    .attr "fill", ({status}) -> 
      switch status
        when "ok" then "#33691e"
        when "in use" then "#ffb300"
        when "waiting" then "#fb8c00"
        when "problem" then "#b71c1c"
        else "#212121"


  setupText: (group) ->
    group.append "text"
    .text ({id, status}) -> 
      "dock no.#{id}"

`export default D3DocksComponent`