'use strict'
const Category = use('App/Models/Category')
const Episode = use('App/Models/Episode')
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

    async SubmitAudio({ request, response, auth}){
        const title = request.input('title')
        const descriptions = request.input('descriptions')
        const category_id = request.input('category_id')
        const images = request.input('images')
        const path_audio = request.input('path_audio')
        const tags = request.input('tags')
        const policy = request.input('policy')
        let episode = new Episode();
        const user = await auth.getUser()
        episode.title = title
        episode.descriptions = descriptions
        episode.category_id = category_id
        episode.images = images
        episode.path_audio = path_audio
        episode.path_audio = path_audio
        episode.tags = tags
        episode.policy = policy
        episode.user_create = user.id
        await episode.save()
        return response.type('application/json')
                        .send( request.all())
        
    }
}

module.exports = PodcastController
