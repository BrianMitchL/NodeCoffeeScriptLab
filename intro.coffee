#Brian Mitchell & Henry Fellows

#functions
charCount = (x) ->
  temp = 0
  for i in x
    temp++
  temp

loop1 = (x) ->
  temp = ""
  for i in [1..x]
    temp += i.toString()
  temp

#tests
assert = require 'assert'
class Person
  constructor: (options) ->
    {@name, @age, @height, @DOB} = options

tim = new Person name: tim, age: 7, height: 22, DOB: "1/1/1912"
bob = new Person name: bob, age: 8, height: 124, DOB: "7/24/2895"

class Employee extends Person


describe "testing loops", ->
  it "should return 14", ->
    assert.equal(charCount("this is a text"), 14)
  it "should return 1", ->
    assert.equal(loop1(1), "1")
  it "should return 12345", ->
    assert.equal(loop1(5), "12345")

#describe "Ranges, slicing, and splicing", ->
#  it "should return false", ->
#    assert.equal(outsideOfRange(4, 5, 9), false)
#  it "should return true", ->
#    assert.equal(outsideOfRange(2, -3, 6), true)
#  it "should return [this,is,a,test]", ->
#    assert.deepEqual(wordSlice("this is a test"), ["this","is","a","test"])
#  it "should return this is a test", ->
#    assert.eual(wordSplice(["this","is","a","test"]), "this is a test")
#  it "should return true", ->
#    assert.equal(inRangeOfAlphabet("f"), true)
#
#describe "testing operators", ->
#  it "should return true", ->
#    assert.equal(isNo(false), true)
#  it "should return no", ->
#    assert.equal(isNo(yes), no)
#  it "should return 81", ->
#    assert.eual(pow(9), 81)
#
#describe "testing existential operator", ->
#  it "should return false", ->
#    assert.equal(exists("undefined"), false)
#  it "should return true", ->
#    assert.equal(exists("testvar"), true)
#  it "should return false", ->
#    assert.equal(exists("no"), false)
#
#describe "testing destructuring", ->
#  it "should return [1, 2, 'three', 4]", ->
#    assert.deepEqual(swap([a, b, c, d],[1, 2, "three", 4]), [1, 2, "three", 4])
#  it "should return tim", ->
#    assert.deepEqual(personSwap(personSwap(tim, bob), tim), tim)
#  it "should return 2", ->
#    assert.equal(changeToTwo(x), 2)
#
#describe "Testing splats", ->
#  it "should sum the operands: 10", ->
#    assert.equal(sum(1, 2, 3, 4), 10)
#  it "should sum the operands: 61", ->
#    assert.equal(sum(5, 6, 3, 4, 2, 4, 5, 2, 5, 6, 9, 7, 8), 61)
#  it "should count the number of operands: 4", ->
#    assert.equal(countOperands(1, 2, "fish", [1, 2, 3]), 4)
#
#describe "Testing Object-Oriented features", ->
#
#
#
#  it "should return true", ->
#  assert.equal(sum(1, 2, 3, 4), 10)
