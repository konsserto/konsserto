var routing = [
    {
        name: 'lok_rest_hello',
        version: "v1",
        pattern: "/testRest",
        method: "get",
        controller: "LOKRestBundle:hello:index",
        description: "Description du webservice Users",
        state: "deprecated"
    }

];


module.exports = routing;