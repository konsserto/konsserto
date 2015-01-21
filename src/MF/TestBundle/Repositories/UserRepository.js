var Repository, User, UserRepository,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Repository = use('@Konsserto/Component/EntityManager/Repository');

User = use('/src/MF/TestBundle/Entities/User');

UserRepository = (function(_super) {
  __extends(UserRepository, _super);

  function UserRepository() {
    UserRepository.__super__.constructor.call(this, User.TABLE_NAME);
  }

  return UserRepository;

})(Repository);

module.exports = UserRepository;
