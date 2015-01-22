var config;

config = {
  bodyParser: {
    type: "both",
    config: {
      extended: false
    }
  },
  database: {
    driver: "mongodb",
    host: "127.0.0.1",
    port: "27017",
    name: "test",
    user: "root",
    password: ""
  },
  loggerHTTP: true,
  port: 3000,
  templateEngine: 'twig',
  secret: "KJKHGFTYHUIO8U97689OIUTGYHUIO329802039SQA",
  locale: "fr"
};

module.exports = config;
