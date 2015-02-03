class Car

  @TABLE_NAME = 'user'

  constructor: (name)->
    @id = {value: 4, type: 'string'}
    @name = {value: name, type: 'string'}

  getName: ()->
    return @name.value

module.exports = Car