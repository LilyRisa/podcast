'use strict'
const Blog = use('App/Models/Blog')
const StorageApi = use('App/Service/StorageApi')
const Env = use('Env')
class BlogController {
    async index({ view, auth }){
        const username = auth.user != null ? auth.user.username : 'underfine';
        const getfile = StorageApi.GetPathApi('/api/getfile/');
        return view.render('blog', {username: username, getfile: getfile});
    }
    async listPost({response, params}){
        const limit = 3
        let post = await Blog.query().with('user').orderBy('id','desc').paginate(params.page, limit)
        post = post.toJSON()
        return response.type('application/json')
                        .send(post)
    }
}

module.exports = BlogController
