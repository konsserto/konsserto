Middleware = use('@Konsserto/Bundle/FrameworkBundle/Middleware/Middleware')

class HelloMiddleware extends Middleware

  helloAction: ()->
    console.log 'toto'
    @next()