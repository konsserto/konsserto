EntityRepository = use('@Konsserto/Component/ORM/EntityRepository')

class JRKHelloBundleRepository extends EntityRepository


	foo: () ->
		aem = @get(5)
		aem.username = 'ABC'
		console.log(aem.id+" "+aem.username)
		return 1


module.exports = JRKHelloBundleRepository
