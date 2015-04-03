`import Ember from 'ember'`
`import InventoriesIndexController from 'apiv1/controllers/inventories/index'`

LogisticsInventoriesIndexController = InventoriesIndexController.extend
  actions:
    touchCell: (cell) ->
      @transitionToRoute "logistics.cell", cell.get("id")

`export default LogisticsInventoriesIndexController`
