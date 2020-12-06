'use strict'
const User = use('App/Models/User')
class AuthorController {
    index({ view }){
        return view.render('login')
    }
    async register({response, request}){
        console.log('hihi');
        const user = new User()
        user.username = request.input('username')
        user.fullname = request.input('fullname')
        user.password = request.input('password')
        user.email = request.input('email')
        user.authority = false
        const result = await user.save()
        return response.type('application/json')
                        .send(result)
    }
    async PostLogin({response, request, auth}){
        const { email, password } = request.all()
        try{
            await auth.attempt(email, password)
            return response.type('application/json')
                        .send({result: true})
        }catch(error){
            return response.type('application/json')
                        .send({result: false})
        }
        
        
    }
}

module.exports = AuthorController
