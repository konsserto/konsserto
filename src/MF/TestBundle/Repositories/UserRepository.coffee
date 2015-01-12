Repository = use('@Konsserto/Component/EntityManager/Repository')

class UserRepository extends Repository

  constructor: ()->
    super('user')

module.exports = UserRepository