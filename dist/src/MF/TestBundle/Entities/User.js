var User;

User = (function() {
  User.TABLE_NAME = 'user';

  function User(username, password, id) {
    if (id == null) {
      id = null;
    }
    this.repository = 'MF:TestBundle:UserRepository';
    this.id = {
      value: id,
      type: 'string'
    };
    this.password = {
      value: password,
      type: 'string'
    };
    this.username = {
      value: username,
      type: 'string'
    };
    this.cars = {
      value: [],
      type: 'Car'
    };
  }

  User.prototype.addCar = function(car) {
    return this.cars.value.push(car);
  };

  User.prototype.getRepository = function() {
    return this.repository;
  };

  User.prototype.getUsername = function() {
    return this.username.value;
  };

  User.prototype.getTableName = function() {
    return User.TABLE_NAME;
  };

  return User;

})();

module.exports = User;
