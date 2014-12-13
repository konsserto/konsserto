EntityRepository = use('@Konsserto/Component/ORM/EntityRepository')

class UserRepository extends EntityRepository


	foo: () ->
		console.log('foooooooooooooo')

	echo:() ->
		console.log('user repository echo')

	alter:(u)->
		u.setUsername(Math.random())

module.exports = UserRepository
