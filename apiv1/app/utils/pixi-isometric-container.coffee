`import Arrows from './arrows'`
`import Ember from 'ember'`
`import binarySearch from './binary-search'`

getTileOrder = (sprite) -> Ember.get sprite, "isometricTilePosition.order"

class PixiIsometricContainer
  _decideContainerReadyStatus = (self) ->
    Arrows.polarize (sprite) -> self.isContainerReady()?

  _add2container = (self) ->
    Arrows.id.fanout _calculateIndex(self)
      .compose Arrows.lift ([sprite, index]) -> self.container.addChildAt sprite, index

  _calculateIndex = (self) ->
    Arrows.lift (sprite) ->
      binarySearch self.container.children, sprite, getTileOrder

  _add2localQueue = (self) ->
    Arrows.lift (sprite) ->
      self.localContainer.pushObject sprite

  _validateSprite = (self) ->
    Arrows.lift (sprite) ->
      throw new UnpositionableError(sprite) unless sprite.isometricTilePosition
      throw new CantEvenIntoOrderError(sprite) unless getTileOrder(sprite)?
      sprite

  constructor: ->
    @localContainer = []
    @addChildProcess = _validateSprite(@)
      .compose _decideContainerReadyStatus(@)
      .compose _add2container(@).fork _add2localQueue(@)

  isContainerReady: ->
    return true if @container and @container.addChildAt

  setContainer: (container) ->
    @container = container
    sortedSprites = _.sortBy @localContainer, getTileOrder
    @container.addChild sprite for sprite in sortedSprites
  
  addChild: (sprite) ->
    @addChildProcess.run sprite
  
  removeChild: (sprite) ->
    @removeChildProcess.run sprite

class UnpositionableError extends Error
  name: "UnpositionableError"
  constructor: (sprite) ->
    @message = "The sprite you gave me doesn't support a isometricTilePosition property. "
    @sprite = sprite
    @message += "Play with it on window.badSprite"
    window.badSprite = sprite

class CantEvenIntoOrderError extends Error
  name: "CantEvenIntoOrderError"
  constructor: (sprite) ->
    @message = "Your sprite wasn't able to tell me what its order should be. "
    @message += "I recommend order = x + y, it should be a number"
    @sprite = sprite
    window.badSprite = sprite
`export default PixiIsometricContainer`
