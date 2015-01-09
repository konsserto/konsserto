var routingConfiguration = {
    routes: [
        {
            name: 'mf_test_import',
            resource: '@MF/TestBundle/Resources/config/routing.js'
        }
    ],
    middlewares: [
       /* {
            name: "MyMiddleware",
            middleware: "MFTestBundle:Hello:hello"
        }*/
    ],
    sockets: [
        {
            name: 'mf_test_import',
            resource: '@MF/TestBundle/Resources/config/socket.js'
        }
    ]
};


module.exports = routingConfiguration;