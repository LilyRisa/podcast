'use strict'
const Category = use('App/Models/Category')
const Episode = use('App/Models/Episode')
const Comment = use('App/Models/Comment')
const StorageApi = use('App/Service/StorageApi')

class HomeController {
    async index ({ view, auth}) {
        const category = await Category.all()
        let count_episode = ((await Episode.all()).toJSON()).length
        count_episode = Math.floor(Math.random() * count_episode)+1;
        let episode = await Episode.query().where('id',count_episode).with('category').with('tag').with('comment').first()
        episode = episode.toJSON()
        let count_cmt = await Comment.query().where('episode_id',episode.id).fetch()
        count_cmt = count_cmt.toJSON()
        const listcategory = category.toJSON()
        count_cmt = count_cmt.length
        episode.descriptions = episode.descriptions.substr(0, 100)+'...'
        const username = auth.user != null ? auth.user.username : 'underfine';
        const getfile = StorageApi.GetPathApi('/api/getfile/');
        let cate_item = await Category.query().with('episode').fetch()
        cate_item = cate_item.toJSON()
        // console.log(cate_item[0].episode)
        return view.render('home', {username: username, category: listcategory, getfile: getfile, episode: episode, cate_item: cate_item, count_cmt: count_cmt})
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
