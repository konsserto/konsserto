var routing = [
    /*
    {
        name: 'konsserto_front_plus',
        pattern: '/plus',
        controller: 'jrkjoobundle:Foo:plus'
    },

	{
		name: 'joo_prefix',
		resource: '@jrk/joo/Resources/config/routing.js'
	}
    ,
	{
		name: 'foo_prefix',
		pattern: "/testing/{prenom}/{nom}",
		controller: 'jrkjoobundle:Foo:testing',
		arguments: {
			nom: {default:'nomDefault',match:'nom?'}
		}
	}
	*/
];



routing.push({
 	name: 'mf_test_import',
 	resource: '@MF/TestBundle/Resources/config/routing.js'
 });


module.exports = routing;