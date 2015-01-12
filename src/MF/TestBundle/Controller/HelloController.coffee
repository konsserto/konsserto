Controller = use('@Konsserto/Bundle/FrameworkBundle/Controller/Controller')

class HelloController extends Controller

  indexAction: (name) =>
    em = @get("EntityManager")
    em.getRepository('user').getAll()
    @render('MFTestBundle:Hello:index.html.twig', {name: name})

module.exports = HelloController