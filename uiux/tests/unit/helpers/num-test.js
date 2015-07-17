/* jshint expr:true */
import { expect } from 'chai';
import {
  describe,
  it
} from 'mocha';
import {
  num
} from 'uiux/helpers/num';

describe('NumHelper', function() {
  // Replace this with your real tests.
  it('works', function() {
    var result = num(42);
    expect(result).to.be.ok;
  });
});
