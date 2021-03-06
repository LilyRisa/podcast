'use strict'
const User = use('App/Models/User')
const Blog = use('App/Models/Blog')
const Episode = use('App/Models/Episode')
const StorageApi = use('App/Service/StorageApi')
const Route = use('Route')
class ProfileController {
    async index({view, auth}){
        let user = auth.user
        user = user != null ? user : 'underfine';
        const profile = user.toJSON()
        const PathUpload = Route.url('upload');
        const getfile = StorageApi.GetPathApi('/api/getfile/')
        let blog = await Blog.query().where('user_create',auth.user.id).fetch();
        blog = blog.toJSON()
        let count_blog = blog.length
        if(profile.avatar == null){
            profile.avatar = 'VanMin-file--75dc18d3411fcef1fda07d98375a2906-jpg-1607595072'
        }
        return view.render('profile',{user: user, PathUpload: PathUpload, getfile: getfile, profile: profile , count_blog: count_blog})
    }
    async information({view, auth}){
        let user = auth.user
        user = user != null ? user : 'underfine';
        const profile = user.toJSON()
        const PathUpload = Route.url('upload');
        const getfile = StorageApi.GetPathApi('/api/getfile/');
        let blog = await Blog.query().where('user_create',auth.user.id).fetch();
        blog = blog.toJSON()
        let count_blog = blog.length
        if(profile.avatar == null){
            profile.avatar = 'VanMin-file--75dc18d3411fcef1fda07d98375a2906-jpg-1607595072'
        }
        return view.render('information',{user: user, storage: PathUpload, getfile: getfile, profile: profile, count_blog: count_blog})
    }
    async SaveInfor({auth, request, response}){
        let id_user = auth.user.id
        let user = await User.findOrFail(id_user)
        if(request.input('avatar') != null){
            user.avatar = request.input('avatar')
        }
        if(request.input('fullname') != null){
            user.fullname = request.input('fullname')
        }
        if(request.input('address') != null){
            user.address = request.input('address')
        }
        if(request.input('descriptions') != null){
            user.descriptions = request.input('descriptions')
        }
        await user.save()
        return response.type('application/json')
                        .send(user)
    }
    async post({ request, response}){
        let blog = new Blog()
        blog.merge(request.all())
        let result = await blog.save()
        return response.type('application/json')
                        .send({status:result})
    }

    async ListPost({ response , params }){
        const limit = 3
        let post = await Blog.query().where('user_create',params.user).with('user').orderBy('id','desc').paginate(params.page, limit)
        post = post.toJSON()
        return response.type('application/json')
                        .send(post)
    }

    async EpisodeList({view, auth}){
        let user = auth.user
        user = user != null ? user : 'underfine';
        const profile = user.toJSON()
        const PathUpload = Route.url('upload');
        const getfile = StorageApi.GetPathApi('/api/getfile/');
        let blog = await Blog.query().where('user_create',auth.user.id).fetch();
        let episode = await Episode.query().with('category').where('user_create',auth.user.id).fetch()
        blog = blog.toJSON()
        episode = episode.toJSON()
        let count_blog = blog.length
        if(profile.avatar == null){
            profile.avatar = 'VanMin-file--75dc18d3411fcef1fda07d98375a2906-jpg-1607595072'
        }
        return view.render('profile_episode',{user: user, storage: PathUpload, getfile: getfile, profile: profile, count_blog: count_blog, episode: episode})
    }

    async DeleteEpisode({ auth, request, response }){
        let user = auth.user
        const iid = user != null ? user.id : 'underfine';
        let episode = await Episode.query().where('id',request.input('id')).where('user_create',iid).delete()
        return response.type('application/json')
                        .send(episode)
    }
}

module.exports = ProfileController
