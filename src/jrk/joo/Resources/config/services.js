module.exports = [
    {
        name: "JooService2",
		_class: "@jrk/joo/Services/joo-service2"
    },
	{
		name:"JooService",
		_class:"@jrk/joo/Services/joo-service",
		args:["JooService2"]
	}
];