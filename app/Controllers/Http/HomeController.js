'use strict'

class HomeController {
    index ({ view, auth}) {
        const username = auth.user != null ? auth.user.username : 'underfine';
        return view.render('home', {username: username})
    }
}

module.exports = HomeController
