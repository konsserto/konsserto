Controller = use('@Konsserto/Bundle/FrameworkBundle/Controller/Controller')
User = use('@jrk/joo/Entity/User')

class HelloController extends Controller

	indexAction: () =>
		em = @get('Entity_Manager').getRepository("user")

		em.create(new User(), (err, data)->
			if !err
				console.log data
		)

		em.get({}, (err, data)->
			if !err
				console.log data
		)

		em.exists({id: 150}, (err, data)->
			if !err
				console.log data
		)

		em.count({}, (err, data)->
			if !err
				console.log data
		)

		em.find({id: 150}, (err, data)->
			if !err
				console.log data
		)


		em.findAll((err, data)->
			if !err
				console.log data
		)

		@render('JRKHelloBundle:Hello:index.html.twig')


module.exports = HelloController