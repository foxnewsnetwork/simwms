`import Ember from 'ember'`
`import { describe, it, beforeEach, afterEach } from 'mocha'`
`import { expect, assert } from 'chai'`
`import startApp from '../../helpers/start-app'`

application = null
container = null
store = null
x = {}
describe 'Acceptance: Docks: DockProblemTest', ->
  beforeEach ->
    application = startApp()
    ###
    Don't return as Ember.Application.then is deprecated.
    Newer version of QUnit uses the return value's .then
    function to wait for promises if it exists.
    ###
    container = application.__container__
    store = container.lookup("store:main")
    visit "docks"
    return

  afterEach ->
    Ember.run application, 'destroy'

  describe "going to a dock", ->
    beforeEach ->
      click "a.list-group-item:first-child"

    it "we should be in a dock now", ->
      andThen ->
        expect(currentPath()).to.equal "docks.dock.index"

    describe "going to problem", ->
      beforeEach ->
        click 'a.btn[href*="problem"]'

      it "should put us in the problem page", ->
        andThen ->
          expect(currentPath()).to.equal "docks.dock.problem"