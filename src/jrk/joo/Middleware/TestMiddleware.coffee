Middleware = use('@Konsserto/Component/Middleware/Middleware')

class TestMiddleware extends Middleware

	processAction: () =>
		console.log 'salut'
		@next()

module.exports = TestMiddleware