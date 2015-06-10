`import Ember from 'ember'`

product = (xs, ys) ->
  output = []
  for x in xs
    for y in ys
      output.push [x,y]
  output

faicon = (type) ->
  String.fromCharCode switch type
    when "barn" then 0xf239 # subway
    when "road" then 0xf018 # road
    when "warehouse" then 0xf1b3 # cubes
    when "station" then 0xf090 # sign-in
    when "scale" then 0xf1ec # calculator
    else 0xf059 # question-circle

D3Interactions = Ember.Component.extend
  tiles: product [-8..14], [0..14]
  classNames: ['hidden']
  svgTagName: "rect"
  svgClassName: "interaction"

  watchDrawSVG: Ember.observer "layer", "mode", "type", ->
    Ember.run.throttle @, @drawSVG, 200, false


  normalize: (tiles) ->
    return [] if @get("mode") isnt "build"
    tiles.map ([x,y]) =>
      x: @get("parentView.pxPerWidth") * x
      y: @get("parentView.pxPerHeight") * y
      width: @get("parentView.pxPerWidth")
      height: @get("parentView.pxPerHeight")
      coordinates: [x,y]

  drawSVG: ->
    models = @d3Models()

    models
    .enter().append "g"
    .call @positionGroup.bind @
    .call @interactGroup.bind @
    .call @setupRect.bind @

    models
    .exit().remove()

  setupRect: (group) ->
    group.append @get "svgTagName"
    .attr "x", ({width}) -> - width / 2
    .attr "y", ({height}) -> - height / 2
    .attr "width", ({width}) -> width - 1
    .attr "height", ({height}) -> height - 1
    .attr "stroke-width", 0.75
    .attr "stroke", "#434343"
    .attr "fill", "#fff"

  setupIcon: (group) ->
    group.append "text"
      .attr "class", "fa"
      .text ({icon}) => faicon @get "type"

  removeIcon: (group) ->
    group.selectAll "text"
    .remove()

  interactGroup: (group) ->
    self = @
    group
    .on "click", ({coordinates}) =>
      @sendAction "action", coordinates
    .on "mouseover", ->
      self.setupIcon d3.select @
    .on "mouseleave", ->
      self.removeIcon d3.select @


  positionGroup: (group) ->
    group
    .attr "class", "interaction"
    .attr "transform", ({x,y,width: w, height: h}) -> 
      "translate(#{x - w / 2}, #{y - h / 2})"

  d3Models: ->
    @get "layer"
    .selectAll ".#{@svgClassName}"
    .data @normalize @get "tiles"

  didInsertElement: ->
    @get("parentView").deferSVG.promise
    .then (svg) => @set "layer", svg.append("g").attr "class", "layer"

  willDestroyElement: ->
    @get("layer")?.remove?()


`export default D3Interactions`