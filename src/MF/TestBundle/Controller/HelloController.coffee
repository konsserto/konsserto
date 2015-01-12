Controller = use('@Konsserto/Bundle/FrameworkBundle/Controller/Controller')

class HelloController extends Controller

  indexAction: (name) =>
    em = @get("EntityManager")

    em.getRepository('MF:TestBundle:UserRepository').getAll((result)=>
      @render('MFTestBundle:Hello:index.html.twig', {name: result[0].username})
    )


module.exports = HelloController