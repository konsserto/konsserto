class Car

  constructor: (name)->
    @name = {value: name, type: 'string'}

  getName: ()->
    return @name.value

module.exports = Car