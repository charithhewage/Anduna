var log = new Log();

var toMD5 = function (val) {
    var _md5 = require('../config/initializers/md5.js');
    return _md5.MD5(val);
};


var current_user = function(){
	var user = session.get('user');
  if (!user) {
      return null;
  }
  return user;
}