// Generated by CoffeeScript 1.7.1
(function() {
  var Employee, Person, assert, bob, charCount, loop1, tim,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  charCount = function(x) {
    var i, temp, _i, _len;
    temp = 0;
    for (_i = 0, _len = x.length; _i < _len; _i++) {
      i = x[_i];
      temp++;
    }
    return temp;
  };

  loop1 = function(x) {
    var i, temp, _i;
    temp = "";
    for (i = _i = 1; 1 <= x ? _i <= x : _i >= x; i = 1 <= x ? ++_i : --_i) {
      temp += i.toString();
    }
    return temp;
  };

  assert = require('assert');

  Person = (function() {
    function Person(options) {
      this.name = options.name, this.age = options.age, this.height = options.height, this.DOB = options.DOB;
    }

    return Person;

  })();

  tim = new Person({
    name: tim,
    age: 7,
    height: 22,
    DOB: "1/1/1912"
  });

  bob = new Person({
    name: bob,
    age: 8,
    height: 124,
    DOB: "7/24/2895"
  });

  Employee = (function(_super) {
    __extends(Employee, _super);

    function Employee() {
      return Employee.__super__.constructor.apply(this, arguments);
    }

    return Employee;

  })(Person);

  describe("testing loops", function() {
    it("should return 14", function() {
      return assert.equal(charCount("this is a text"), 14);
    });
    it("should return 1", function() {
      return assert.equal(loop1(1), "1");
    });
    return it("should return 12345", function() {
      return assert.equal(loop1(5), "12345");
    });
  });

}).call(this);

//# sourceMappingURL=intro.map
