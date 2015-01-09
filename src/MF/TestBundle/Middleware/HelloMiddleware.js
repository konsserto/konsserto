var HelloMiddleware, Middleware,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Middleware = use('@Konsserto/Bundle/FrameworkBundle/Middleware/Middleware');

HelloMiddleware = (function(_super) {
  __extends(HelloMiddleware, _super);

  function HelloMiddleware() {
    return HelloMiddleware.__super__.constructor.apply(this, arguments);
  }

  HelloMiddleware.prototype.helloAction = function() {
    console.log('toto');
    return this.next();
  };

  return HelloMiddleware;

})(Middleware);
