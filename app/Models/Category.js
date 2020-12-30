'use strict'

/** @type {typeof import('@adonisjs/lucid/src/Lucid/Model')} */
const Model = use('Model')

class Category extends Model {
    static get table () {
        return 'categories' // Your table name
    }
    user () {
        return this.belongsTo('App/Models/User')
    }
    episode () {
        return this.hasOne('App/Models/Episode')
    }
    
}

module.exports = Category
