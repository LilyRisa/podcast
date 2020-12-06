'use strict'

class EpisodesController {
    index ({ view }) {
        const username = auth.user != null ? auth.user.username : 'underfine';
        return view.render('episodes',{username: username})
    }
}

module.exports = EpisodesController
