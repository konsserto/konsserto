Controller = use('@Konsserto/Bundle/FrameworkBundle/Controller/Controller')

class HelloController extends Controller

  indexAction: (name) =>
    em = @get("EntityManager")
    promise = em.getRepository('MF:TestBundle:UserRepository').getByCriteria({username: 'admin'})

    promise.then (value) =>
      @render('MFTestBundle:Hello:index.html.twig', {name: name})

    promise.catch (err) ->
      console.log err

module.exports = HelloController