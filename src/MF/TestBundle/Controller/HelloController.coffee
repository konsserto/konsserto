Controller = use('@Konsserto/Bundle/FrameworkBundle/Controller/Controller')

class HelloController extends Controller

  indexAction: (name) =>
    stopwatch = @get("stopwatch")
    @render('MFTestBundle:Hello:index.html.twig', {name: name})

module.exports = HelloController