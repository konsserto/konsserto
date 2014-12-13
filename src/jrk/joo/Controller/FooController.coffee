Controller = use('@Konsserto/Bundle/FrameworkBundle/Controller/Controller')
User = use('@jrk/joo/Entity/User')
Form = use('@Konsserto/Component/Form/Form')
Finder = use('@Konsserto/Component/Finder/Finder')
Stopwatch = use('@Konsserto/Component/Stopwatch/Stopwatch')


class FooController extends Controller

	testingAction: () =>
		sw = new Stopwatch()

		sw.start("foo")
		x = new Finder()
		files = x.files().recursive().in('.').size('>0').name('Foo').contains("x = new Finder()").display()
		sw.lap("foo")
		files = x.directories().recursive().in('.').display()
		sw.lap("foo")
		files = x.directories().recursive().in('.').display()
		event = sw.stop("foo")
		console.log 'DURATION TOTALE : ' + event.getDuration()
		console.log 'DURATION TOTALE : ' + event.getDurationPeriods()

		@response.send(event.getPeriods())
		merci <3 <3

	indexAction: () =>
		form = @get('Form_Factory').createForm('test')
		form.add('test', 'text')
		form.add('testosterone', 'text')
		form.add('go', 'submit')
		@response.send('CSRF : ' + form.createView())

	loginAction: () =>
		@response.send('<a href="/foo/connect">tu veux te loguer ?</a>')

	connectAction: () =>
		@request.session.token = @get('Security').createToken()
		@response.redirect('/foo')

	plusAction: () =>
		@response.send(@renderView('jrkjoobundle:socket.html.twig', {lol: 100000000}))

	ormAction: ()=>
		em = @getEntityManager()
		a = em.getRepository('jrkjoobundle:User').find(1)
		b = em.getRepository('jrkjoobundle:User').find(2)
		c = em.getRepository('jrkjoobundle:User').find(3)
		c.setUsername('z')
		b.setUsername('y')
		a.setUsername('x')
		em.persist(a)
		em.flush()



	formAction: () =>
		validators = @get('Form_Validator')
		user = @get('Entity_Manager').getRepository('jrkjoobundle:User').find(1)
		user = new User()
		form = @createFormBuilder(user)
		.add('username', "string", {label: "pseudo"})
		.add('birthday', 'string', {required: validators.required('Birthday requis !')})
		.add('save', 'submit')
		.add('saveAndStay', 'submit')
		.getForm()


		form.handleRequest(@request)

		if (form.isValid())
			em = @getEntityManager()
			em.persist(user);
			em.flush()
			console.log(user.echo());
		else
			console.log("no")


		@render('jrkjoobundle:form.html.twig', {form: form.createView()})

	htmlsocketAction: ()=>
		@render('jrkjoobundle:socket.html.twig', {lol: 100000000})


module.exports = FooController

