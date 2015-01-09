Middleware = use('@Konsserto/Component/Middleware/Middleware')

class HelloMiddleware extends Middleware

  helloAction: ()->
    console.log 'fion'

module.exports = HelloMiddleware