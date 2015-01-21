var Bundle, MFTestBundle,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Bundle = use('@Konsserto/Component/Bundle/Bundle');

MFTestBundle = (function(_super) {
  __extends(MFTestBundle, _super);

  function MFTestBundle() {
    return MFTestBundle.__super__.constructor.apply(this, arguments);
  }

  return MFTestBundle;

})(Bundle);

module.exports = new MFTestBundle;
