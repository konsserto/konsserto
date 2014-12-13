

class JooService


	constructor: (@fooservice2) ->

	echo:() =>
		return 'JooService echo '+@fooservice2.echo()

module.exports = JooService