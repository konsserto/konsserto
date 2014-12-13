Controller = use('@Konsserto/Bundle/FrameworkBundle/Controller/SocketController')

class SocketController extends Controller

	cAction:(data)=>
		console.log('connect')

	s1Action:()=>
		console.log('s1 request !')

	s2Action:()=>
		console.log('s2')
		@ioRoomJoin('lol')
		@ioRoomBroadcast('lol','announce',{
			message:'oooo'
		})

module.exports = SocketController

