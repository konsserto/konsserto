Controller = use('@Konsserto/Bundle/FrameworkBundle/Controller/Controller')
User = use('@jrk/joo/Entity/User')

class JooController extends Controller

	indexAction: () =>

		em = @get('entity_manager')
		repo = em.getRepository('jrkjoobundle:User')
		user = repo.get(1)

		uf = new User()
		uf.setUsername('zzz')
		em.persist(uf)
		em.flush()

		uf.setUsername('loooooooooooool')
		em.persist(uf)
		em.flush()

		uf._setOwner(user)
		em.persist(uf)
		em.flush()

		@render("jrkjoobundle:Page:home.html.twig",{patate:33})

	plusAction: () =>
		res.send('plus')

module.exports = JooController
