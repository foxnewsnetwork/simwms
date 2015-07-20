`import Ember from 'ember'`
`import InventoriesIndexController from 'uiux/controllers/inventories/index'`
`import gridMaker from 'table-grid-2d/utils/grid-maker'`

LogisticsInventoriesIndexController = InventoriesIndexController.extend
  queryParams:["active"]
  active: null
  actions:
    clickSummary: ->
      @set "active", null
    clickPanel: (warehouse) ->
      if warehouse.get("id") is @get("active")
        @set "active", null
      else
        @set "active", warehouse.get("id")

`export default LogisticsInventoriesIndexController`
