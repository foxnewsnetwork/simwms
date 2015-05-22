`import Ember from 'ember'`
`import D3TilesComponent from './d3-tiles'`
`import D from '../utils/debug-ex'`

extremeBy = (models, field) ->
  [small, ..., large] = models.sortBy(field)
  [small, large]

D3WarehousesComponent = D3TilesComponent.extend
  classNames: ['hidden']
  width: 2
  height: 2
  svgClassName: 'warehouse'
  svgTagName: "rect"

  watchDrawSVG: Ember.observer "layer", "models.@each.x", "models.@each.status", ->
    Ember.run.throttle @, @drawSVG, 200, false

  buildRectangle: (models=[]) ->
    [..., xL] = extremeBy models, "x"
    x: xL.get("x")
    y: xL.get("y")

  changeUnits: ({x,y}) ->
    x: x * @get("parentView.pxPerWidth")
    y: y * @get("parentView.pxPerHeight")

  normalize: (models) ->
    [@changeUnits @buildRectangle models]

  drawSVG: ->
    warehouse = @d3Models()

    warehouse
    .enter()
    .append "g"
    .call @positionGroup.bind @
    .call @setupRect.bind @
    .call @interactGroup.bind @
    .call @setupText.bind @

    warehouse
    .exit()
    .remove()

  setupText: (group) ->
    group.append "text"
    .text "inventory"
      
    
  interactGroup: (group) ->
    group
    .on "click", =>
      @sendAction "action"



`export default D3WarehousesComponent`