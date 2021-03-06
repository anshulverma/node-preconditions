require './helpers/test_helper'

{checkNumberType, InvalidTypeError} = preconditions

describe 'test number type precondition', ->
  it "boolean 'true' values are not numbers", ->
    wrapper = -> checkNumberType true, 'invalid numerical value'
    assert.throws wrapper, InvalidTypeError, 'invalid numerical value'

  it "boolean 'false' values are not numbers", ->
    wrapper = -> checkNumberType false, 'invalid numerical value'
    assert.throws wrapper, InvalidTypeError, 'invalid numerical value'

  it 'arrays are not numbers', ->
    wrapper = -> checkNumberType [5], 'invalid numerical value'
    assert.throws wrapper, InvalidTypeError, 'invalid numerical value'

  it 'objects are not numbers', ->
    wrapper = -> checkNumberType new Object, 'invalid numerical value'
    assert.throws wrapper, InvalidTypeError, 'invalid numerical value'
