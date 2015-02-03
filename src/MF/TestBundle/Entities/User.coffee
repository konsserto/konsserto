class User

  @TABLE_NAME = 'user'

  constructor: (username, password, id = null)->
    @repository = 'MF:TestBundle:UserRepository'
    @id =
      value: id
      type: 'string'
    @password =
      value: password
      type: 'string'
    @username =
      value: username
      type: 'string'
    @cars =
      value: []
      type: 'Car'


  getRepository: () ->
    return @repository

  getUsername: ()->
    return @username.value

  getTableName: ()->
    return User.TABLE_NAME

module.exports = User