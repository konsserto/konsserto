var socket = [
	{
		name: 'socket_starting',
		controller: 'jrkjoobundle:Socket:c',
		connection: true
	},
	{
		name: 'socket_s1',
		event: 's1',
		controller: 'jrkjoobundle:Socket:s1'
	},
	{
		name: 'socket_prefix',
		resource: '@jrk/joo/Resources/config/socket.js',
		prefix: 'lol/'
	}

];

socket.push({
 	name: 'devlic_socketexample_chat_import',
 	resource: '@Devlic/SocketExample/ChatBundle/Resources/config/socket.js'
 });

module.exports = socket;


