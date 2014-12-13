class Post


	@model = {
		table: 'post',
		fields: {
			id: { type: "serial", key: true },
			codePostal: {type: 'text', size: 255},
			e1: {type: 'enum', values: ['A','B','3434']},
			d1: {type: 'date', time: true},
			d2: {type: 'date', time: false},
			n1: {type: 'number'}
		},
		associations: {
			hasOne: [],
			hasMany: []
		}

	}

	constructor: ()->
		return this

	getCodePostal:() ->
		return @codePostal

	setCodePostal:(@codePostal) ->
		return this

	getCodepostal:() ->
		return @codePOSTAL

	setCodepostal:(@codePOSTAL) ->
		return this

	getCodPostal:() ->
		return @codPostal

	setCodPostal:(@codPostal) ->
		return this

	getE1:() ->
		return @e1

	setE1:(@e1) ->
		return this

	getD1:() ->
		return @d1

	setD1:(@d1) ->
		return this

	getD2:() ->
		return @d2

	setD2:(@d2) ->
		return this

	getN1:() ->
		return @n1

	setN1:(@n1) ->
		return this



module.exports = Post