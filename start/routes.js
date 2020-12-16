'use strict'

/*
|--------------------------------------------------------------------------
| Routes
|--------------------------------------------------------------------------
|
| Http routes are entry points to your web application. You can create
| routes for different URL's and bind Controller actions to them.
|
| A complete guide on routing is available here.
| http://adonisjs.com/docs/4.1/routing
|
*/

/** @type {typeof import('@adonisjs/framework/src/Route/Manager')} */
const Route = use('Route')

Route.get('/', ({ response })=>{
    response.redirect('home', true)
})
Route.get('home', 'HomeController.index').as('home.index')
Route.get('episodes', 'EpisodesController.index').as('episodes.index')
Route.get('episode/:id', 'EpisodeController.index').as('episode.index')
Route.get('home_pagination/:id', 'HomeController.pagination').as('episode.pagination')

Route.get('login', 'AuthorController.index').as('login.index').middleware('guest')
Route.post('register', 'AuthorController.register').as('register').middleware('guest')
Route.post('post-login', 'AuthorController.PostLogin').as('login.post').middleware(['verifyPassword'])
Route.get('search/:id', 'EpisodesController.search').as('episodes.search')
//comment
Route.get('comment/:episode/:page', 'EpisodeController.comment').as('episode.comment')
//blog
Route.get('blog', 'BlogController.index').as('blog.index')
Route.get('blog/:page', 'BlogController.listPost').as('blog.listPost')
// public profile
Route.get('user/:username', 'UserController.user').as('user.index')
Route.get('user/:username/:page', 'UserController.listPost').as('user.listPost')
// exception
Route.get('403', 'ExceptionController.403').as('except.403')
Route.get('404', 'ExceptionController.404').as('except.404')
Route.group(() => {
    Route.get('podcast', 'PodcastController.index').as('podcast.index')
    Route.post('audio_podcast', 'PodcastController.put_audio').as('podcast.audio')
    Route.post('podcast_submit','PodcastController.SubmitAudio').as('podcast.submit')
    Route.get('logout', async ({ auth, response })=>{
        await auth.logout()
        response.redirect('home', true)
    })
    // profile
    Route.get('profile', 'ProfileController.index').as('profile.index')
    Route.get('profile_information', 'ProfileController.information').as('profile.information')
    Route.post('profile/information/post', 'ProfileController.SaveInfor').as('profile.SaveInfor')
    //chat room
    Route.get('room', 'ChatRoomController.index').as('chatroom.index')
    Route.get('room/:page/:limit', 'ChatRoomController.getmess').as('chatroom.getmess')
    Route.post('mess/post', 'ChatRoomController.Save').as('chatroom.save')
    Route.post('get_user', 'ChatRoomController.getuser').as('chatroom.getuser')
    
    // post blog profile
    Route.post('profile/post', 'ProfileController.post').as('profile.post')
    Route.get('profile/list_post/:user/:page', 'ProfileController.ListPost').as('profile.list_post')

    //comment
    Route.post('comment', 'EpisodeController.postComment').as('episode.postComment')
}).middleware(['auth'])
