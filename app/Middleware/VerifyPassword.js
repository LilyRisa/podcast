'use strict'

const User = use('App/Models/User')
const Hash = use('Hash')
class VerifyPassword {

    async handle ({ request, response }, next, properties) {
    
      const { email, password } = request.all();
      // const user = await User.findBy('email', email)
      // const passwControl = await Hash.verify(password, user.password)
      
      if (password == null || password == '' || email == null || email =='') {
        return response.status(400).json({
          result : false
        });
      }else{
        await next()
      }
    }
}
    
    module.exports = VerifyPassword