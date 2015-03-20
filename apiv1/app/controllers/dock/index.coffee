`import Ember from 'ember'`
`import FunEx from 'apiv1/utils/fun-ex'`

DockIndexController = Ember.Controller.extend
  expectingTruck: FunEx.computed 'truck', ->
    @get("truck")?

  truck: FunEx.computed "iotrucks.@each", ->
    @iotrucks.findBy "origin", @get("model")

`export default DockIndexController`
