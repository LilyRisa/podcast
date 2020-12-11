'use strict'
const User = use('App/Models/User')
const StorageApi = use('App/Service/StorageApi')
const Env = use('Env')
class ProfileController {
    async index({view, auth}){
        let user = auth.user
        const username = user != null ? user.username : 'underfine';
        const profile = user.toJSON()
        const token = Env.get('ETOKEN', '')
        const storage = StorageApi.GetPathApi('/api/upload');
        const getfile = StorageApi.GetPathApi('/api/getfile/');
        if(profile.avatar == null){
            profile.avatar = 'VanMin-file--75dc18d3411fcef1fda07d98375a2906-jpg-1607595072'
        }
        
        console.log(profile);
        return view.render('profile',{username,username, token: token, storage: storage, getfile: getfile, profile: profile})
    }
    async information({view, auth}){
        let user = auth.user
        const username = user != null ? user.username : 'underfine';
        const profile = user.toJSON()
        const token = Env.get('ETOKEN', '')
        const storage = StorageApi.GetPathApi('/api/upload');
        const getfile = StorageApi.GetPathApi('/api/getfile/');
        if(profile.avatar == null){
            profile.avatar = 'VanMin-file--75dc18d3411fcef1fda07d98375a2906-jpg-1607595072'
        }
        return view.render('information',{username,username, token: token, storage: storage, getfile: getfile, profile: profile})
    }
    async SaveInfor({auth, request, response}){
        let id_user = auth.user.id
        let user = await User.findOrFail(id_user)
        if(request.input('avatar') != null){
            user.avatar = request.input('avatar')
        }
        if(request.input('fullname') != null){
            user.fullname = request.input('fullname')
        }
        if(request.input('address') != null){
            user.address = request.input('address')
        }
        if(request.input('descriptions') != null){
            user.descriptions = request.input('descriptions')
        }
        await user.save()
        return response.type('application/json')
                        .send(user)
    }
}

module.exports = ProfileController
