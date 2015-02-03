var Car;

Car = (function() {
  Car.TABLE_NAME = 'user';

  function Car(name) {
    this.id = {
      value: 4,
      type: 'string'
    };
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
