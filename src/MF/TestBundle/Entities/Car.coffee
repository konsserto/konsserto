class Car

  constructor: (@name)->
    @attributes = {
      _id: {value: 2, type: 'string'}
      name: {value: name, type: 'string'}
    }

  getName: ()->
    return @attributes.name

module.exports = Car