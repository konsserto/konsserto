var config = {
    // Body parser falculatif, sa valeur type:both sera prise par defaut
    /*bodyParser: {
     type: "both",
     config: {
     //les confs du bodyparser habituelles, falcultatif, default : extended false
     }
     },*/
    database: {
        driver: "mysql",
        host: "127.0.0.1",
        port: "3700",
        name: "test",
        user: "root",
        password: "root"
    },
    loggerHTTP: true, // falcultatic, par defaut, ca vaut false
    port: 3000, // falculatif, par defaut c est le 3000
    templateEngine: 'twig',
    secret: "KJKHGFTYHUIO8U97689OIUTGYHUIO329802039SQA",
    locale: "fr"
};

module.exports = config;