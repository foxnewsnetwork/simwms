`import Ember from 'ember'`
`import { describe, it, beforeEach, afterEach } from 'mocha'`
`import { expect, assert } from 'chai'`
`import startApp from '../../helpers/start-app'`

application = null
container = null
store = null
describe 'Acceptance: Logistics: AppointmentIndex', ->
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

  it 'can visit the appointment index page', ->
    visit 'logistics'

    andThen ->
      expect(currentPath()).to.equal "logistics.appointments.index"