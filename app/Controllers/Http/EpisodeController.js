'use strict'
const Category = use('App/Models/Category')
const Episode = use('App/Models/Episode')
const Comment = use('App/Models/Comment')
const StorageApi = use('App/Service/StorageApi')
const Tags = use('App/Models/Tags')
const Env = use('Env');

class EpisodeController {
    async index({view, auth , params}){
        const category = await Category.all()
        let tags = await Tags.all()
        let episode = await Episode.query().with('category').with('tag').where('id', params.id).first()
        const listcategory = category.toJSON()
        tags = tags.toJSON()
        episode = episode.toJSON()
        let count_cmt = await Comment.query().where('episode_id',episode.id).fetch()
        count_cmt = count_cmt.toJSON()
        count_cmt = count_cmt.length
        const user = auth.user != null ? auth.user : 'underfine';
        const profile = auth.user;
        const getfile = StorageApi.GetPathApi('/api/getfile/');
        const serverip = Env.get('SEVER_IP', 'http://127.0.0.1');
        return view.render('episode',{user: user, category: listcategory, getfile: getfile, episode: episode, tags: tags, profile: profile, count_cmt: count_cmt, serverip: serverip})
    }

    async comment({ response , params }){
        const limit = 3
        let comment = await Comment.query().where('episode_id',params.episode).with('user').orderBy('id','desc').paginate(params.page, limit)
        comment = comment.toJSON()
        return response.type('application/json')
                        .send(comment)
    }

    async postComment({ request, response}){
        const com = new Comment();
        com.merge(request.all())
        await com.save()
        return response.type('application/json')
                        .send(request.all())
    }
}

module.exports = EpisodeController
