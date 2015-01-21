class User

  @TABLE_NAME = 'user'

  constructor: (username, password, id = null)->
    @repository = 'MF:TestBundle:UserRepository'
    @attributes = {
      _id:
        value: id
        type: 'string'
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
    return User.TABLE_NAME

module.exports = User