'use strict'
const Category = use('App/Models/Category')
class PodcastController {
    async index({view, auth}){
        const category = await Category.all()
        const listcategory = category.toJSON()
        const username = auth.user != null ? auth.user.username : 'underfine';
        //console.log(listcategory);
        return view.render('podcast',{username: username, category: listcategory})
    }
    async put_audio({ request, response }){
        const audio = request.all()
        console.log(audio);
        return response.type('application/json')
                        .send(audio)
    }
}

module.exports = PodcastController
