`import { expect, assert } from 'chai'`
`import {
  describeModel,
  it
} from 'ember-mocha'`

specialNeeds = {
  # Specify the other units that are required for this test.
}
describeModel 'fire/warehouse', 'FireWarehouse', specialNeeds, ->
  it 'exists', ->
    model = @subject()
    # store = @store()
    expect(model).to.be.ok

  it 'should properly handle the special strings field', ->
    model = @subject
      batchIds: ['apple', 'orange', 'banana']
    expect(model).to.be.ok
    expect(model.get 'batchIds').to.eql ['apple', 'orange', 'banana']