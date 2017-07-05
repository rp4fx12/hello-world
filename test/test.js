const expect = require('chai').expect;
const functions = require('../basic-functions');

describe('Test Hello Name function', function() {
  it('returns Hello Test', function() {
    expect('Hello Test', functions.helloName('Test'));
  });
  it('returns Hello ', function() {
    expect('Hello ', functions.helloName(null));
  })
});
