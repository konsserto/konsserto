var routing = [
    {
        name: 'konsserto_front_homepage',
        pattern: '/joo',
        controller: 'jrkjoobundle:Joo:index'
    },
    {
        name: 'konsserto_front_plus',
        pattern: '/plus',
        controller: 'jrkjoobundle:Foo:plus'
    },
	{
		name: 'joo_prefix',
		resource: '@jrk/joo/Resources/config/routing.js'
	},
	{
		name: 'foo_prefix',
		pattern: "/testing/{prenom}/{nom}",
		controller: 'jrkjoobundle:Foo:testing',
		arguments: {
			nom: {default:'nomDefault',match:'nom?'}
		}
	}
];


routing.push({
 	name: 'jrk_hello_import',
 	resource: '@JRK/HelloBundle/Resources/config/routing.js'
 });
//routing.push({
// 	name: 'lok_rest_import',
// 	resource: '@LOK/RestBundle/Resources/config/routing.js'
// });

routing.push({
 	name: 'devlic_socketexample_chat_import',
 	resource: '@Devlic/SocketExample/ChatBundle/Resources/config/routing.js',
	prefix:'chat'
 });



module.exports = routing;


