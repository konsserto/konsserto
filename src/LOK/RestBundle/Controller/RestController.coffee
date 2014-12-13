Controller = use('@Konsserto/Bundle/FrameworkBundle/Controller/Controller')
ListeRoutes = use('@LOK/RestBundle/Resources/config/routing')

class RestController extends Controller

  constructor: ()->
    @parser = require('easyxml')

  display: (data, type)->
    if type == "xml"
      @response.set('Content-Type', 'text/xml')
      data = @parser.render data
    else
      if type == "html"
        @response.set('Content-Type', 'text/html')
      else
        @response.set('Content-Type', 'text/json')
    @response.send(data)

  displayRoutes: ()->
    data = "<ul>"
    for r in ListeRoutes
      desc = ""
      if r.description
        desc = r.description
      data += "<li>" + r.method.toUpperCase() + " " + r.pattern + " : " + desc + "</li>"
    data += "</ul>"
    @response.send(data)


module.exports = RestController