'use strict'
const Category = use('App/Models/Category')
const Episode = use('App/Models/Episode')
const StorageApi = use('App/Service/StorageApi')
const Env = use('Env')
const Tags = use('App/Models/Tags')
class EpisodesController {
    async index({view, auth}){
        const category = await Category.all()
        let tags = await Tags.all()
        let episode = await Episode.query().with('category').fetch()
        const listcategory = category.toJSON()
        tags = tags.toJSON()
        episode = episode.toJSON()
        console.log(episode)
        const username = auth.user != null ? auth.user.username : 'underfine';
        const getfile = StorageApi.GetPathApi('/api/getfile/');
        return view.render('episodes',{username: username, category: listcategory, getfile: getfile, episode: episode, tags: tags})
    }

}

module.exports = EpisodesController
