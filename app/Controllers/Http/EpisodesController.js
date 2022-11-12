'use strict'
const Category = use('App/Models/Category')
const Episode = use('App/Models/Episode')
const Comment = use('App/Models/Comment')
const StorageApi = use('App/Service/StorageApi')
const Env = use('Env')
const Tags = use('App/Models/Tags')
class EpisodesController {
    async index({view, auth}){
        const category = await Category.all()
        let tags = await Tags.all()
        let episode = await Episode.query().with('category').with('user').orderBy('id','desc').fetch()
        const listcategory = category.toJSON()
        tags = tags.toJSON()
        episode = episode.toJSON()
        for(let i=0; i < episode.length; i++){
            let count_cmt = await Comment.query().where('episode_id',episode[i].id).fetch()
            count_cmt = count_cmt.toJSON()
            episode[i].count_cmt = count_cmt.length
        }
        const serverip = Env.get('SEVER_IP', 'http://127.0.0.1');
        const user = auth.user != null ? auth.user : 'underfine';
        const getfile = StorageApi.GetPathApi('/api/getfile/');
        return view.render('episodes',{user: user, category: listcategory, getfile: getfile, episode: episode, tags: tags, serverip: serverip})
    }

    async search({response, params}){
        let search_with_title = await Episode.query().where('title','LIKE', '%'+params.id+'%').with('category').with('tag').fetch()
        search_with_title = search_with_title.toJSON()
        return response.type('application/json')
                        .send(search_with_title)
    }
    async api({ response }){
        let episode = await Episode.query().with('category').orderBy('id','asc').fetch()
        episode = episode.toJSON()
        const getfile = StorageApi.GetPathApi('/api/getfile/');
        for(let i=0; i < episode.length; i++){
            episode[i].path_audio = getfile+episode[i].path_audio
            episode[i].images = getfile+episode[i].images
        }
        return response.type('application/json')
                        .send(episode)
    }

}

module.exports = EpisodesController
