var Car, Controller, HelloController, User,
  __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Controller = use('@Konsserto/Bundle/FrameworkBundle/Controller/Controller');

User = use('/src/MF/TestBundle/Entities/User');

Car = use('/src/MF/TestBundle/Entities/Car');

HelloController = (function(_super) {
  __extends(HelloController, _super);

  function HelloController() {
    this.indexAction = __bind(this.indexAction, this);
    return HelloController.__super__.constructor.apply(this, arguments);
  }

  HelloController.prototype.indexAction = function(name) {
    var car, user;
    this.em = this.get('EntityManager');
    car = new Car('bmw');
    user = new User(name, 'password');
    user.addCar(car);
    this.em.persist(user);
    this.em.flush();
    return this.render('MFTestBundle:Hello:index.html.twig', {
      name: name
    });
  };

  return HelloController;

})(Controller);

module.exports = HelloController;
