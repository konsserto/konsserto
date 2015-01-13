class Car

  constructor: (@name)->
    @attributes = {}
    @attributes._id = {value: 1}

  getName: ()->
    return @name

module.exports = Car