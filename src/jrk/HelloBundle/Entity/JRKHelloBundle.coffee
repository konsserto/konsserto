class JRKHelloBundle


	@model = {
		table: 'jrkhellobundle',
		fields: {
			id: { type: "serial", key: true },

		},
		associations: {
			hasOne: [],
			hasMany: []
		}
		repository: '@JRK/HelloBundle/Repository/JRKHelloBundle'

	}

	constructor: ()->
		return this



module.exports = JRKHelloBundle