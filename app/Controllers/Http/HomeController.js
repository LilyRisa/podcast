'use strict'
const Category = use('App/Models/Category')
const Episode = use('App/Models/Episode')
const Comment = use('App/Models/Comment')
const StorageApi = use('App/Service/StorageApi')
const Database = use('Database')

class HomeController {
    async index ({ view, auth}) {
        const category = await Category.all()
        let episode = await Episode.query().with('category').with('tag').with('comment').orderBy(Database.raw('RAND()')).paginate(1, 1)
        episode = episode.toJSON()
        episode = episode.data[0];
        let count_cmt = await Comment.query().where('episode_id',episode.id).fetch()
        count_cmt = count_cmt.toJSON()
        const listcategory = category.toJSON()
        count_cmt = count_cmt.length
        episode.descriptions = episode.descriptions.substr(0, 100)+'...'
        const user = auth.user != null ? auth.user : 'underfine';
        const getfile = StorageApi.GetPathApi('/api/getfile/');
        let cate_item = await Category.query().with('episode').fetch()
        cate_item = cate_item.toJSON()
        return view.render('home', {user: user, category: listcategory, getfile: getfile, episode: episode, cate_item: cate_item, count_cmt: count_cmt})
    }
    async pagination ({response , params}) {
        const page = params.id
        const limit = 3
        let episode = await Episode.query().with('category').orderBy('id','desc').paginate(page, limit)
        episode = episode.toJSON()
        for(let i=0; i< episode.data.length; i++){
            let count_cmt = await Comment.query().where('episode_id',episode.data[i].id).fetch()
            count_cmt = count_cmt.toJSON()
            episode.data[i].count_cmt = count_cmt.length
        }
        return response.type('application/json')
                        .send(episode)
    }
}

module.exports = HomeController
