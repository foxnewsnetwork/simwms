`import Ember from 'ember'`

InventoriesIndexController = Ember.Controller.extend
  colNames: "abcde".split("")
  rowNames: [2..12]

  warehouses: Ember.computed.alias("model")

  actions:
    touchCell: (cell) ->
      @transitionToRoute "inventories.cell", cell.get("id")

`export default InventoriesIndexController`
