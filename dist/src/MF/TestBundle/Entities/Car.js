var Car;

Car = (function() {
  Car.TABLE_NAME = 'car';

  function Car(name, id) {
    this.id = {
      value: id,
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

  Car.prototype.getTableName = function() {
    return Car.TABLE_NAME;
  };

  return Car;

})();

module.exports = Car;
