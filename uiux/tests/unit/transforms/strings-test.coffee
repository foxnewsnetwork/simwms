`import { expect, assert } from 'chai'`
`import {
  describeModule,
  it
} from 'ember-mocha'`

specialNeeds = {
  # Specify the other units that are required for this test.
  # needs: ['serializer:foo']
}
describeModule 'transform:strings', 'StringsTransform', specialNeeds, ->

  # Replace this with your real tests.
  it 'exists', ->
    transform = @subject()
    assert.ok transform

  it 'should serialized an array of ids into a csv', ->
    transform = @subject()
    array = ['dog-301', '33', '-Journey232', 'xmen44']
    actual = transform.serialize(array)
    expected = "dog-301,33,-Journey232,xmen44"
    assert.equal actual, expected

  it 'should properly deserialize junk', ->
    transform = @subject()
    strings = "dog-301,33,-Journey232,xmen44"
    expected = ['dog-301', '33', '-Journey232', 'xmen44']
    actual = transform.deserialize strings
    expect(actual).to.deep.equal expected