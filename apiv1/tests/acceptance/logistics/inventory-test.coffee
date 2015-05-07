`import Ember from 'ember'`
`import { describe, it, beforeEach, afterEach } from 'mocha'`
`import { expect, assert } from 'chai'`
`import startApp from '../../helpers/start-app'`

application = null
container = null
store = null
describe 'Acceptance: Logistics: Inventory', ->
  beforeEach ->
    application = startApp()
    ###
    Don't return as Ember.Application.then is deprecated.
    Newer version of QUnit uses the return value's .then
    function to wait for promises if it exists.
    ###
    container = application.__container__
    store = container.lookup("store:main")
    return

  afterEach ->
    Ember.run application, 'destroy'

  it 'can visit the logistics inventory page', ->
    visit 'logistics/inventories'
    
    andThen ->
      expect(currentPath()).to.equal "logistics.inventories.index"
      ctrl = container.lookup("controller:logistics/inventories/index")
      expect(ctrl).to.be.ok
      expect(ctrl.get "model").to.be.ok
      expect(ctrl.get "warehouses").to.equal ctrl.get "model"
      expect(ctrl.get "warehouses.length").to.be.greaterThan 5