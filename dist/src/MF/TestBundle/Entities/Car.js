var Car;

Car = (function() {
  function Car(name) {
    this.name = {
      value: name,
      type: 'string'
    };
  }

  Car.prototype.getName = function() {
    return this.name.value;
  };

  return Car;

})();

module.exports = Car;
