class User

  @TABLE_NAME = 'user'

  constructor: (username, password)->
    @repository = 'MF:TestBundle:UserRepository'
    @attributes = {
      password:
        value: password
        type: 'string'
      username:
        value: username
        type: 'string'
      cars:
        value: []
        type: 'Car'
    }

  addCar: (newCar)->
    @attributes.cars.value.push newCar

  getCars: ()->
    return @attributes.cars.value

  setPassword: (password)->
    @attributes.password.value = password
    return @

  getPassword: ()->
    return  @attributes.password.value

  getRepository: () ->
    return @repository

  setUsername: (username)->
    @attributes.username.value = username
    return @

  getUsername: ()->
    return @attributes.username.value

  getTableName: ()->
    return @tableName

module.exports = User