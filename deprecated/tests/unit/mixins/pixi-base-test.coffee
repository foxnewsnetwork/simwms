`import Ember from 'ember'`
`import PixiBaseMixin from '../../../mixins/pixi-base'`

module 'PixiBaseMixin'

# Replace this with your real tests.
test 'it works', ->
  PixiBaseObject = Ember.Object.extend PixiBaseMixin
  subject = PixiBaseObject.create()
  ok subject
