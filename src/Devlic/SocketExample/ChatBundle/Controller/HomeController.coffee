SocketController = use('@Konsserto/Bundle/FrameworkBundle/Controller/SocketController')

class HomeController extends SocketController


	indexAction:() =>
		@render('DevlicSocketExampleChatBundle:Home:index.html.twig',{})

	onConnectAction:(socket) =>
		socket.on('disconnect',@onDisconnectAction)
		console.log('a user connected')

	onDisconnectAction:() =>
		console.log('a user disconnected')

	chatMessageAction:(msg) =>
		console.log('message:' + msg)
		@ioBroadcast('chat message', msg)


module.exports = HomeController