Repository = use('@Konsserto/Component/EntityManager/Repository')
User = use('/src/MF/TestBundle/Entities/User')

class UserRepository extends Repository

  constructor: ()->
    super(User.TABLE_NAME)

module.exports = UserRepository