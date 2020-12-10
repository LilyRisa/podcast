'use strict'
const Category = use('App/Models/User')
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
        
        console.log(username);
        return view.render('profile',{username,username, token: token, storage: storage, getfile: getfile, profile: profile})
    }
}

module.exports = ProfileController
