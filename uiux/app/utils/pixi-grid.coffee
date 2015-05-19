`import Ember from 'ember'`
`import FunEx from './fun-ex'`
`import normalizePoint from './normalize-point'`

foldLeft = (xs, init, reducer) -> 
  xs = xs.toArray() if xs.toArray?
  _.reduce xs, reducer, init

PixiGrid = Ember.Object.extend
  knownTiles: ["grass", "barn", "warehouse", "road"]
  defaultTile: "grass"

  isRoadTile: (coord) ->
    @tileTypeAt(coord) is "road"

  tileTypeAt: (coord) ->
    keys = ["barns", "warehouses", "roads"].map (core) => ["matrix", core, @keyify(coord)].join(".")
    [barnKey, houseKey, roadKey] = keys
    return "barn" if @get(barnKey)?
    return "warehouse" if @get(houseKey)?
    return "road" if @get(roadKey)?
    @get("defaultTile")

  keyify: (point) ->
    [x,y] = normalizePoint point
    "x@#{x},y@#{y}"

  initializeMatrix: ->
    barns: Ember.Object.create()
    warehouses: Ember.Object.create()
    roads: Ember.Object.create()
  
  matrixReducer: (matrix, position) -> 
    matrix.set @keyify(position), position
    matrix

  matrix: FunEx.computed "barns.@each", "warehouses.@each", "roads.@each", ->
    matrix = @initializeMatrix()
    reducer = _.bind @matrixReducer, @
    foldLeft @get("barns"), matrix.barns, reducer
    foldLeft @get("warehouses"), matrix.warehouses, reducer
    foldLeft @get("roads"), matrix.roads, reducer
    matrix

`export default PixiGrid`
