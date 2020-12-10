'use strict'
const Category = use('App/Models/Category')
const Episode = use('App/Models/Episode')
const StorageApi = use('App/Service/StorageApi')

class HomeController {
    async index ({ view, auth}) {
        const category = await Category.all()
        let count_episode = ((await Episode.all()).toJSON()).length
        count_episode = Math.floor(Math.random() * count_episode)+1;
        let episode = await Episode.query().where('id',count_episode).with('category').with('tag').first()
        const listcategory = category.toJSON()
        episode = episode.toJSON()
        episode.descriptions = episode.descriptions.substr(0, 100)+'...'
        const username = auth.user != null ? auth.user.username : 'underfine';
        const getfile = StorageApi.GetPathApi('/api/getfile/');
    
        return view.render('home', {username: username, category: listcategory, getfile: getfile, episode: episode})
    }
    async pagination ({response , params}) {
        const page = params.id
        const limit = 3
        let episode = await Episode.query().with('category').paginate(page, limit)
        episode = episode.toJSON()
        return response.type('application/json')
                        .send(episode)
    }
}

module.exports = HomeController
