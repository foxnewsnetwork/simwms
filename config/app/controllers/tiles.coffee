`import Ember from 'ember'`
`import CPM from 'ember-cpm'`

TilesController = Ember.Controller.extend
  currentMode: "query"
  buildModeEngaged: Ember.computed.equal "currentMode", "build"
  buildTypeLegal: CPM.Macros.among "buildType", "road", "barn", "warehouse", "scale", "station"

  tellUserToSelectTile: ->
    alert "You forgot to select a tile type"

  enterTransitionMode: ->
    @set "transitionMode", true

  exitTransitionMode: ->
    @set "transitionMode", false
  actions:
    clickTile: (tile) ->
      @transitionToRoute "tiles.tile.index", tile.get("id")

    buildTile: ([x,y]) ->
      return @tellUserToSelectTile() unless @get "buildTypeLegal"
      @enterTransitionMode()
      @store.createRecord "tile",
        tileType: @get "buildType"
        x: x
        y: y
      .save()
      .then =>
        @get("model").update()
      .finally =>
        @exitTransitionMode()

    changeMode: (mode) ->
      return @set("currentMode", null) if @get("currentMode") is mode
      @set "currentMode", mode

    selectBuild: (type) ->
      return @set("buildType", null) if @get("buildType") is type
      @set "buildType", type

`export default TilesController`