`import Ember from 'ember'`
`import InventoriesIndexController from 'uiux/controllers/inventories/index'`

ManagerInventoriesIndexController = InventoriesIndexController.extend
  queryParams:["active"]
  active: null
  actions:
    clickPanel: (warehouse) ->
      if warehouse.get("id") is @get("active")
        @set "active", null
      else
        @set "active", warehouse.get("id")

`export default ManagerInventoriesIndexController`
