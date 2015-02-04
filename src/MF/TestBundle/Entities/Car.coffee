class Car

  @TABLE_NAME = 'car'

  constructor: (name, id)->
    @id = {value: id, type: 'string'}
    @name = {value: name, type: 'string'}

  getName: ()->
    return @name.value

  getTableName: ()->
    return Car.TABLE_NAME

module.exports = Car