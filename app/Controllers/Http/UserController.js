'use strict'
const User = use('App/Models/User')
const Blog = use('App/Models/Blog')
const StorageApi = use('App/Service/StorageApi')
class UserController {
    async user({view, auth , params, response}){
        if(auth.user == null){
            const getfile = StorageApi.GetPathApi('/api/getfile/')
            const username = auth.user != null ? auth.user.username : 'underfine';
            let user = await User.query().where('username',params.username).first()
            user = user.toJSON()
            let blog = await Blog.query().where('user_create',user.id).fetch();
            blog = blog.toJSON()
            let count_blog = blog.length
            console.log(user);
            return view.render('user',{username: username, getfile: getfile, profile: user, count_blog: count_blog})
        }else{
            if(auth.user.username == params.username){
                return response.route('profile.index')
            }else{
                const getfile = StorageApi.GetPathApi('/api/getfile/')
                const username = auth.user != null ? auth.user.username : 'underfine';
                let user = await User.query().where('username',params.username).first()
                user = user.toJSON()
                let blog = await Blog.query().where('user_create',user.id).fetch();
                blog = blog.toJSON()
                let count_blog = blog.length
                console.log(user);
                return view.render('user',{username: username, getfile: getfile, profile: user, count_blog: count_blog})
            }
        }
    }
    async listPost({ response , params }){
        const limit = 3
        let user = await User.query().where('username',params.username).first()
        user = user.toJSON()
        let post = await Blog.query().where('user_create',user.id).with('user').orderBy('id','desc').paginate(params.page, limit)
        post = post.toJSON()
        return response.type('application/json')
                        .send(post)
    }
}

module.exports = UserController
