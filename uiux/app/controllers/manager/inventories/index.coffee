`import Ember from 'ember'`
`import InventoriesIndexController from 'uiux/controllers/inventories/index'`

ManagerInventoriesIndexController = InventoriesIndexController.extend
  actions:
    touchCell: (cell) ->
      @transitionToRoute "manager.inventories.cell", cell.get("id")

`export default ManagerInventoriesIndexController`
