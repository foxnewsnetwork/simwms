`import Ember from 'ember'`
`import DS from 'ember-data'`
`import CPM from 'ember-cpm'`
Macros = CPM.Macros

AlphabetExt = "abcdefghijklmnopqrstuvwxyzαβγδεζηθικλμνξοπρστυφχψω".split("")

Tile = DS.Model.extend
  tileType: DS.attr "string"
  tileName: DS.attr "string"
  x: DS.attr "number"
  y: DS.attr "number"
  z: DS.attr "number"
  width: DS.attr "number", defaultValue: 1
  height: DS.attr "number", defaultValue: 1
  createdAt: DS.attr "date"
  updatedAt: DS.attr "date"
  cameras: DS.hasMany "camera"
  enteringTrucks: DS.hasMany "truck", inverse: "entryScale"
  exitingTrucks: DS.hasMany "truck", inverse: "exitScale"
  loadingTrucks: DS.hasMany "truck", inverse: "dock"
  batches: DS.hasMany "batch", inverse: "warehouse"

  colName: Ember.computed "x", ->
    AlphabetExt[Math.abs(@getWithDefault("x", 0)) % AlphabetExt.length]
    
  rowName: Ember.computed.alias "y"

  hasCamera: Ember.computed.gt "cameras.length", 0

  defaultName: Macros.join "colName", "rowName", "-"
  nameOrId: Macros.firstPresent "tileName", "defaultName", "id"

  isFree: Ember.computed.equal "status", "free"
  
  status: Ember.computed "enteringTrucks.length", "exitingTrucks.length", "loadingTrucks.length", ->
    return "busy" if @get("enteringTrucks.length") > 0 or @get("loadingTrucks.length") > 0
    "free"

  batchCount: Ember.computed.alias "batches.length"
`export default Tile`