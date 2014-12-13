class User

	@model = {
		table: 'users2',
		fields: {
			id: { type: "serial", key: true },
			username: { type: "text" },
			birthday: { type: "date"}
		},
		associations: {
			hasOne: [
				{name: "owner", mappedBy: "jrkjoobundle:User", options: {required: false, key: true, reverse: "children"}}
			]
		}
		repository: '@jrk/joo/Repository/UserRepository'
	}

	tostring:()->
		console.log(@id+' '+@username+' '+@owner)

	constructor: ()->

	setUsername: (@username)->
		return this

	getUsername: ->
		return @username

	_getOwner: () ->
		return @owner

	_setOwner: (@owner)->
		return this

	echo: ()->
		console.log("USER ECHO")


module.exports = User
