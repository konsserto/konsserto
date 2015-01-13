class Car

  constructor: (@name)->
    @attributes = {
      _id: {value: 1, type: 'string'}
      name: {value: name, type: 'string'}
    }

  getName: ()->
    return @attributes.name

module.exports = Car