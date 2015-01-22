var Car;

Car = (function() {
  function Car(name) {
    this.name = name;
    this.attributes = {
      _id: {
        value: 2,
        type: 'string'
      },
      name: {
        value: name,
        type: 'string'
      }
    };
  }

  Car.prototype.getName = function() {
    return this.attributes.name;
  };

  return Car;

})();

module.exports = Car;
