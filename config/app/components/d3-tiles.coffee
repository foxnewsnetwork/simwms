`import Ember from 'ember'`
`import CPM from 'ember-cpm'`
D3TilesComponent = Ember.Component.extend
  classNames: ['hidden']
  svgTagName: "rect"
  svgClassName: "base-tile"
  watchDrawSVG: Ember.observer "layer", "models.@each.x", ->
    Ember.run.throttle @, @drawSVG, 200, false

  drawSVG: ->
    models = @d3Models()

    models
    .enter().append "g"
    .call @positionGroup.bind @
    .call @interactGroup.bind @
    .call @setupRect.bind @
    .call @setupIcon.bind @
    
    models.exit().remove()

  normalize: (models=[]) ->
    models.map (model) =>
      model: model
      x: @get("parentView.pxPerWidth") * model.get "x"
      y: @get("parentView.pxPerHeight") * model.get("y")
      width: @get("parentView.pxPerWidth") * model.get "width"
      height: @get("parentView.pxPerHeight") * model.get "height"
      id: model.get "id"
      tileType: model.get "tileType"
      hasCam: model.get "hasCamera"

  didInsertElement: ->
    @get("parentView").deferSVG.promise
    .then (svg) => @set "layer", svg.append("g").attr "class", "layer"

  willDestroyElement: ->
    @get("layer")?.remove?()

  widthPx: CPM.Macros.product "parentView.pxPerWidth", "width"
    
  heightPx: CPM.Macros.product "parentView.pxPerHeight", "height"

  setupIcon: (group) ->
    group.append "text"
    .attr "class", "fa"
    .text ({tileType}) -> 
      String.fromCharCode switch tileType
        when "barn" then 0xf239 # subway
        when "road" then 0xf018 # road
        when "warehouse" then 0xf1b3 # cubes
        when "station" then 0xf090 # sign-in
        when "scale" then 0xf1ec # calculator
        else "?"

  positionGroup: (group) ->
    group
    .attr "class", ({tileType}) ->
      switch tileType
        when "barn" then "dock"
        when "road" then "road"
        when "warehouse" then "warehouse"
        when "station" then "station"
        when "scale" then "scale"
        else "tile"
    .attr "transform", ({x,y,width: w, height: h}) -> 
      "translate(#{x - w / 2}, #{y - h / 2})"

  setupRect: (group) ->
    group.append @get "svgTagName"
    .attr "x", ({width}) -> - width / 2
    .attr "y", ({height}) -> - height / 2
    .attr "rx", 10
    .attr "ry", 10
    .attr "width", ({width}) -> width - 1
    .attr "height", ({height}) -> height - 1
    .attr "stroke-width", 2
    .attr "stroke", ({hasCam}) -> if hasCam then "#b71c1c" else "#212121"
    .attr "fill", ({tileType}) ->
      switch tileType
        when "barn" then "#ffcdd2" # red lighten-4
        when "road" then "#424242" # grey darken-4
        when "warehouse" then "#d7ccc8" # brown lighten-4
        when "station" then "#f0f4c3" # lime lighten-4
        when "scale" then "#b2ebf2" # cyan lighten-4
        else "#fff"
    
  interactGroup: (group) ->
    group
    .on "click", ({model}) =>
      @sendAction "action", model

  d3Models: ->
    @get "layer"
    .selectAll "g"
    .data @normalize @get "models"
    
`export default D3TilesComponent`