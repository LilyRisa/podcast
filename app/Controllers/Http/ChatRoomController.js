'use strict'
const PublicMess = use('App/Models/PublicMess')
const User = use('App/Models/User')
const Env = use('Env')
const StorageApi = use('App/Service/StorageApi')
class ChatRoomController {
    index({ view, auth }){
        const token = Env.get('ETOKEN', '')
        const getfile = StorageApi.GetPathApi('/api/getfile/');
        const username = auth.user != null ? auth.user.username : 'underfine';
        const userfull = auth.user != null ? auth.user : 'underfine';
        return view.render('roomchat',{username: username, token: token, getfile: getfile, user: userfull})
    }
    async getmess({response, params, auth}){
        const token = Env.get('ETOKEN', '')
        let public_mess = await PublicMess.query().with('user').orderBy('id','desc').paginate(params.page, params.limit)
        public_mess = public_mess.toJSON()
        const username = auth.user != null ? auth.user.id : 'underfine';
        public_mess.auth = username
        return response.type('application/json')
                        .send(public_mess)
    }
    async Save({response, request, auth}){
        const mess = new PublicMess();
        mess.user_sent = auth.user.id
        mess.messenges = request.input('mess')
        let retu = await mess.save()
        return response.type('application/json')
                        .send(request.input('mess'))
    }
    async getuser({response, request,}){
        const id = parseInt(request.input('id'))
        let user = await User.find(id)
        user = user.toJSON()
        return response.type('application/json')
                        .send(user)
    }
}

module.exports = ChatRoomController
