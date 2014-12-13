RestController = use('@LOK/RestBundle/Controller/RestController')

class HelloController extends RestController


  indexAction: () =>
    @displayRoutes()


module.exports = HelloController