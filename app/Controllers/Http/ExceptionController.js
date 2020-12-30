'use strict'

class ExceptionController {
    403({view}){
        return view.render('403')
    }
    404({view}){
        return view.render('404')
    }
}

module.exports = ExceptionController
