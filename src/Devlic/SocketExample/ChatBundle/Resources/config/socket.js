var socket = [
	{name:'chat_connect',listener:'connection',controller:'DevlicSocketExampleChatBundle:Home:onConnect'},
	{name:'chat_message',pattern:'chat message',controller:'DevlicSocketExampleChatBundle:Home:chatMessage'}
];


module.exports = socket;