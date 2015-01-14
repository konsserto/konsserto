Controller = use('@Konsserto/Bundle/FrameworkBundle/Controller/Controller')
User = use('/src/MF/TestBundle/Entities/User')
Car = use('/src/MF/TestBundle/Entities/Car')

class HelloController extends Controller

  indexAction: (name) =>
    em = @get 'EntityManager'
    ###promise = em.getRepository('MF:TestBundle:UserRepository').getByCriteria {username: 'admin', id: 1}
    promise.then (value) =>###
    user = new User(name, 'password1')
    user.addCar(new Car('Mercedes'))
    em.persist(user)
    em.flush()

    @render 'MFTestBundle:Hello:index.html.twig', {name: name}

module.exports = HelloController