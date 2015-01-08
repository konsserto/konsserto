var Kernel = require('konsserto');
var k = new Kernel;

var port = 3000;
config = require('./app/config/config');
if (config.port) {
    port = config.port;
}

k.start(port);
process.on('SIGINT', function () {
    k.shutdown(0);
});