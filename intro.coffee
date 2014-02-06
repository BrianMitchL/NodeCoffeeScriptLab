#Brian Mitchell & Henry Fellows

#functions
charCount = (x) ->
  temp = 0
  for [0..x.length - 1]
    temp++
  temp

loop1 = (x) ->
  temp = ""
  for i in [1..x]
    temp += i.toString()
  temp

outsideOfRange = (num, min, max) ->
  if num < min or num > max
    true
  else
    false

wordSlice = (word) ->
  arr = []
  arr = word.split " "
  arr

wordSplice = (words) ->
  temp = ""
  for i in [0..words.length - 1]
    temp += words[i]
  temp

inExclusiveRange = (x) ->
  for i in [34...67]
    if x == i
      return true
  false

isNo = (x) ->
  if x == no
    return yes
  return off

squareThis = (x) ->
  ## ** should work for Math.pow() if WebStorm was up to date with coffeescript 1.7.x
  return Math.pow(x, 2)

testvar = "this is a test"
testing = null
cheese = 564

exists = (word) ->
  word?

swap = (arr, arr2) ->
  arr = arr2
  arr


changeToTwo = (input) ->
  input = 2
  input

sum = (first, rest...) ->
  toReturn = first
  for i in [0..rest.length - 1]
    toReturn += rest[i]
  toReturn

countOperands = (operands...) ->
  operands.length
#
#
#tests
#
#
assert = require 'assert'

describe "testing loops", ->
  it "should return 14", ->
    assert.equal(charCount("this is a text"), 14)
  it "should return 1", ->
    assert.equal(loop1(1), "1")
  it "should return 12345", ->
    assert.equal(loop1(5), "12345")

describe "Ranges, slicing, and splicing", ->
  it "should return true", ->
    assert.equal(outsideOfRange(4, 5, 9), true)
  it "should return false", ->
    assert.equal(outsideOfRange(2, -3, 6), false)
  it "should return [this,is,a,test]", ->
    assert.deepEqual(wordSlice("this is a test"), ["this","is","a","test"])
  it "should return thisisatest", ->
    assert.equal(wordSplice(["this","is","a","test"]), "thisisatest")
  it "should return true", ->
    assert.equal(inExclusiveRange(54), true)

describe "testing operators", ->
  it "should return true", ->
    assert.equal(isNo(false), true)
  it "should return no", ->
    assert.equal(isNo(yes), no)
  it "should return 81", ->
    assert.equal(squareThis(9), 81)

describe "testing existential operator", ->
  it "should return false", ->
    assert.equal(exists(testing), false)
  it "should return true", ->
    assert.equal(exists(testvar), true)
  it "should return false", ->
    assert.equal(exists(cheese), true)

describe "testing destructuring", ->
  it "should return [1, 2, 'three', 4]", ->
    assert.deepEqual(swap([testvar, testing, cheese],[1, 2, "three"]), [1, 2, "three"])
  it "should return [null, 'cool beans', 50670]", ->
    assert.deepEqual(swap([cheese, testing, testvar],[null, "cool beans", 50670]), [null, "cool beans", 50670])
  it "should return 2", ->
    assert.equal(changeToTwo(cheese), 2)

describe "Testing splats", ->
  it "should sum the operands: 10", ->
    assert.equal(sum(1, 2, 3, 4), 10)
  it "should sum the operands: 66", ->
    assert.equal(sum(5, 6, 3, 4, 2, 4, 5, 2, 5, 6, 9, 7, 8), 66)
  it "should count the number of operands: 4", ->
    assert.equal(countOperands(1, 2, "fish", [1, 2, 3]), 4)