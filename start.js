var Kernel = require('konsserto');
var k = new Kernel;
k.start(require('./app/config/config').port);
process.on('SIGINT', function () {
	k.shutdown(0)
});