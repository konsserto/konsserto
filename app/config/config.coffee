config =
  bodyParser: # Optional, default value for type : both, default value for config : {extended:false}
    type: "both"
    config:
      extended: false
  database: # Optional at the basis, but mandatory when exploiting the EntityManager service
    driver: "mysql",
    host: "127.0.0.1",
    port: "27017",
    name: "test",
    user: "root",
    password: "",
  loggerHTTP: true, # Optional, default : false
  port: 3000, # Optional, default : 3000
  templateEngine: 'twig', # Optional, default : twig
  secret: "KJKHGFTYHUIO8U97689OIUTGYHUIO329802039SQA",
  locale: "fr"

module.exports = config;