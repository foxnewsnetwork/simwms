`import Ember from 'ember'`

D3TilesComponent = Ember.Component.extend
  width: 75
  height: 75
  classNames: ['hidden']

  normalize: (models=[]) ->
    models.map (model) =>
      model: model
      x: @width * model.get "x"
      y: @height * (model.get("y") - 7)
      id: model.get "id"
      status: model.get "status"

  didInsertElement: ->
    @get("parentView").deferSVG.promise
    .then (svg) => @set "layer", svg.append("g").attr "class", "layer"

  willDestroyElement: ->
    @get("layer")?.remove?()

  positionGroup: (group) ->
    group
    .attr "class", @svgClassName
    .attr "transform", ({x,y}) => 
      "translate(#{x - @width / 2}, #{y - @height / 2})"

  setupText: (group) ->
    group.append "text"
    .text ({id, status}) -> 
      "tile no.#{id}"

  setupRect: (group) ->
    group.append @get "svgTagName"
    .attr "x", - @width / 2
    .attr "y", - @height / 2
    .attr "rx", 10
    .attr "ry", 10
    .attr "width", @width - 1
    .attr "height", @height - 1
    .attr "stroke", ({status}) -> 
      switch status
        when "ok" then "#33691e"
        when "in use" then "#ffb300"
        when "waiting" then "#fb8c00"
        when "problem" then "#b71c1c"
        else "#212121"
    .attr "fill", "#fff"
    
  interactGroup: (group) ->
    group
    .on "click", ({model}) =>
      @sendAction "action", model

  d3Models: ->
    @get "layer"
    .selectAll ".#{@svgClassName}"
    .data @normalize @get "models"
    
`export default D3TilesComponent`