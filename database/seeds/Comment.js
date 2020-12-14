'use strict'

/*
|--------------------------------------------------------------------------
| Comment
|--------------------------------------------------------------------------
|
| Make use of the Factory instance to seed database with dummy data or
| make use of Lucid models directly.
|
*/

/** @type {import('@adonisjs/lucid/src/Factory')} */
const Factory = use('Factory')

class Comment {
  async run () {
    
    for(let i=0; i< 100; i++){
      let com = await Factory.model('App/Models/Comment').create()
      await com.save()
    }
  }
}

module.exports = Comment
