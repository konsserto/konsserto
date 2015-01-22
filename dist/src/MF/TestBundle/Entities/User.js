var User;

User = (function() {
  User.TABLE_NAME = 'user';

  function User(username, password, id) {
    if (id == null) {
      id = null;
    }
    this.repository = 'MF:TestBundle:UserRepository';
    this.attributes = {
      _id: {
        value: id,
        type: 'string'
      },
      password: {
        value: password,
        type: 'string'
      },
      username: {
        value: username,
        type: 'string'
      },
      cars: {
        value: [],
        type: 'Car'
      }
    };
  }

  User.prototype.addCar = function(newCar) {
    return this.attributes.cars.value.push(newCar);
  };

  User.prototype.getCars = function() {
    return this.attributes.cars.value;
  };

  User.prototype.setPassword = function(password) {
    this.attributes.password.value = password;
    return this;
  };

  User.prototype.getPassword = function() {
    return this.attributes.password.value;
  };

  User.prototype.getRepository = function() {
    return this.repository;
  };

  User.prototype.setUsername = function(username) {
    this.attributes.username.value = username;
    return this;
  };

  User.prototype.getUsername = function() {
    return this.attributes.username.value;
  };

  User.prototype.getTableName = function() {
    return User.TABLE_NAME;
  };

  return User;

})();

module.exports = User;
