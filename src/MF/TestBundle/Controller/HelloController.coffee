Controller = use('@Konsserto/Bundle/FrameworkBundle/Controller/Controller')
User = use('/src/MF/TestBundle/Entities/User')
Car = use('/src/MF/TestBundle/Entities/Car')

class HelloController extends Controller

  indexAction: (name) =>
    @em = @get('EntityManager')

    user = new User(name, 'password')
    @em.persist(user)
    @em.flush()

    @render 'MFTestBundle:Hello:index.html.twig', {name: name}

module.exports = HelloController