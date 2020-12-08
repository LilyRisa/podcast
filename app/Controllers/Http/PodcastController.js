'use strict'
const Category = use('App/Models/Category')
const StorageApi = use('App/Service/StorageApi')
const Env = use('Env')
class PodcastController {
    async index({view, auth}){
        const category = await Category.all()
        const listcategory = category.toJSON()
        const username = auth.user != null ? auth.user.username : 'underfine';
        //console.log(listcategory);
        const token = Env.get('ETOKEN', '')
        const storage = StorageApi.GetPathApi('/api/upload');
        const getfile = StorageApi.GetPathApi('/api/getfile/');
        return view.render('podcast',{username: username, category: listcategory, storage: storage, token: token, getfile: getfile})
    }
    async put_audio({ request, response }){
        const audio = request.all()
        console.log(audio);
        return response.type('application/json')
                        .send(audio)
    }
}

module.exports = PodcastController
