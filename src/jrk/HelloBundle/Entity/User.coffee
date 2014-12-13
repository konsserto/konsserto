class User


	@model = {
		table: 'user',
		fields: {
			id: { type: "serial", key: true },
			firstname: {type: 'text', size: 255},
			lastName: {type: 'text', size: 10},
			gender: {type: 'enum', values: ['male','female']},
			dateadd: {type: 'date', time: true},
			dob: {type: 'date', time: false}
		},
		associations: {
			hasOne: [],
			hasMany: []
		},
		repository: '@jrk/joo/Repository/UserRepository'

	}

	constructor: ()->
		return this

	getFirstname:() ->
		return @firstname

	setFirstname:(@firstname) ->
		return this

	getLastName:() ->
		return @lastName

	setLastName:(@lastName) ->
		return this

	getGender:() ->
		return @gender

	setGender:(@gender) ->
		return this

	getDateadd:() ->
		return @dateadd

	setDateadd:(@dateadd) ->
		return this

	getDob:() ->
		return @dob

	setDob:(@dob) ->
		return this



module.exports = User