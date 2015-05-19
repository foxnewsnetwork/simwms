`import Ember from 'ember'`
`import InventoriesIndexController from 'uiux/controllers/inventories/index'`
`import gridMaker from 'table-grid-2d/utils/grid-maker'`

LogisticsInventoriesIndexController = InventoriesIndexController.extend
  actions:
    touchCell: (cell) ->
      return if Ember.isBlank cell
      @transitionToRoute "logistics.cell", cell.get("id")

`export default LogisticsInventoriesIndexController`
