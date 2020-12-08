'use strict'

/*
|--------------------------------------------------------------------------
| Factory
|--------------------------------------------------------------------------
|
| Factories are used to define blueprints for database tables or Lucid
| models. Later you can use these blueprints to seed your database
| with dummy data.
|
*/

/** @type {import('@adonisjs/lucid/src/Factory')} */
    const Factory = use('Factory')
    const Hash = use('Hash')
    Factory.blueprint('App/Models/User', async (faker) => {
        return {
        username: 'Admin',
        email: 'minh@gmail.com',
        password: await Hash.make('oanhngungoc'),
        fullname: 'Bùi Văn Minh',
        authority: 1
        }
    })
