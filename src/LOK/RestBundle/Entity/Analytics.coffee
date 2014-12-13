class Analytics

	@model = {
		table: 'analytics',
		fields: {
			id: { type: "serial", key: true },
			version: { type: "text" },
			url: { type: "date"},
			date: { type: "number"}
		}
	}

	constructor: ()->

	getId: ()->
		return @id

	getVersion: ()->
		return @version

	getUrl: ()->
		return @url

	getDate: ()->
		return @date


module.exports = Analytics