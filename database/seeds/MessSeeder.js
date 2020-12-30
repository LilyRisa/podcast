'use strict'

/*
|--------------------------------------------------------------------------
| MessSeeder
|--------------------------------------------------------------------------
|
| Make use of the Factory instance to seed database with dummy data or
| make use of Lucid models directly.
|
*/

/** @type {import('@adonisjs/lucid/src/Factory')} */
const Factory = use('Factory')

class MessSeeder {
  async run () {
    
    for(let i=0; i< 100; i++){
      let mess = await Factory.model('App/Models/PublicMess').create()
      await mess.save()
    }
  }
}

module.exports = MessSeeder
