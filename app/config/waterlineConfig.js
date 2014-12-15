var mongoAdapter = require('sails-mongo');

var config = {

    // Setup Adapters
    // Creates named adapters that have have been required
    adapters: {
        'default': mongoAdapter,
        mongo: mongoAdapter
    },

    // Build Connections Config
    // Setup connections using the named adapter configs
    connections: {
        myLocalDisk: {
            adapter: 'disk'
        },
        myLocalMySql: {
            adapter: 'mongo',
            host: 'localhost',
            port: 27017,
            database: 'test'
        }
    }
};