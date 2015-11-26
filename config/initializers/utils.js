var toMD5 = function(val){
	var _md5 = require('../config/initializers/md5.js');
  return _md5.MD5(val);
}

var relativePrefix = function (path) {
    var parts = path.split('/');
    var prefix = '';
    var i;
    var count = parts.length - 3;
    for (i = 0; i < count; i++) {
        prefix += '../';
    }
    return prefix;
};
