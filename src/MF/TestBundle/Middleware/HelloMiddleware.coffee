Middleware = use('@Konsserto/Component/Middleware/Middleware')

class HelloMiddleware extends Middleware

  helloAction: ()->
    @next()

module.exports = HelloMiddleware