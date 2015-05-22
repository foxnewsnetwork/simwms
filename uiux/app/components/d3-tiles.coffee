`import Ember from 'ember'`
`import CPM from 'ember-cpm'`
D3TilesComponent = Ember.Component.extend
  classNames: ['hidden']

  normalize: (models=[]) ->
    models.map (model) =>
      model: model
      x: @get("parentView.pxPerWidth") * model.get "x"
      y: @get("parentView.pxPerHeight") * model.get("y")
      id: model.get "id"
      status: model.get "status"

  didInsertElement: ->
    @get("parentView").deferSVG.promise
    .then (svg) => @set "layer", svg.append("g").attr "class", "layer"

  willDestroyElement: ->
    @get("layer")?.remove?()

  widthPx: CPM.Macros.product "parentView.pxPerWidth", "width"
    
  heightPx: CPM.Macros.product "parentView.pxPerHeight", "height"

  positionGroup: (group) ->
    group
    .attr "class", @svgClassName
    .attr "transform", ({x,y}) => 
      w = @get "widthPx"
      h = @get "heightPx"
      "translate(#{x - w / 2}, #{y - h / 2})"

  setupRect: (group) ->
    group.append @get "svgTagName"
    .attr "x", - @get("widthPx") / 2
    .attr "y", - @get("heightPx") / 2
    .attr "rx", 10
    .attr "ry", 10
    .attr "width", @get("widthPx") - 1
    .attr "height", @get("heightPx") - 1
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

  setupText: (group) ->
    group.append "text"
    .text ({id, status}) -> 
      "tile no.#{id}"

  d3Models: ->
    @get "layer"
    .selectAll ".#{@svgClassName}"
    .data @normalize @get "models"
    
`export default D3TilesComponent`