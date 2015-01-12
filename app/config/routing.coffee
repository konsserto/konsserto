routingConfiguration =
  routes: [
    {
      name: 'mf_test_import',
      resource: '@MF/TestBundle/Resources/config/routing'
    }
  ],
  middlewares: [
  ],
  sockets: [
    {
      name: 'mf_test_import',
      resource: '@MF/TestBundle/Resources/config/socket'
    }
  ]


module.exports = routingConfiguration;


### Middleware example
{
    name: "MyMiddleware",
    middleware: "MFTestBundle:Hello:hello"
}
  ###