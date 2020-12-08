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
Route.get('episode', 'EpisodeController.index').as('episode.index')

Route.get('login', 'AuthorController.index').as('login.index').middleware('guest')
Route.post('register', 'AuthorController.register').as('register').middleware('guest')
Route.post('post-login', 'AuthorController.PostLogin').as('login.post').middleware(['verifyPassword'])

Route.group(() => {
    Route.get('podcast', 'PodcastController.index').as('podcast.index')
    Route.post('audio_podcast', 'PodcastController.put_audio').as('podcast.audio')
}).middleware(['auth'])
