'use strict'

const Category = use('App/Models/Category')
const Episode = use('App/Models/Episode')
let Tags = use('App/Models/Tags')
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
        return response.type('application/json')
                        .send(audio)
    }

    async SubmitAudio({ request, response, auth}){
        let requesttags = request.input('tags')
        const user = await auth.getUser()
        requesttags = requesttags.split(',')
        const policy = request.input('policy')
        let episode = new Episode();
        episode.title = request.input('title')
        episode.descriptions = request.input('descriptions')
        episode.category_id = request.input('category_id')
        episode.images = request.input('images')
        episode.path_audio = request.input('path_audio')
        episode.policy = policy
        episode.user_create = user.id
        await episode.save()
        let lastEpisode = await Episode.findBy('path_audio',request.input('path_audio'))
        for(let i = 0; i < requesttags.length; i++){
            let checktag = await Tags.findBy('name',requesttags[i]);
            if(checktag == null){
                let tag = new Tags()
                tag.name = requesttags[i]
                await tag.episode().saveMany([lastEpisode]);
            }else{
                await lastEpisode.tag().attach(checktag.id)
            }
        }
        return response.type('application/json')
                        .send( request.all())
    }
}

module.exports = PodcastController
