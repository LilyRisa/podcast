'use strict'

/** @type {typeof import('@adonisjs/lucid/src/Lucid/Model')} */
const Model = use('Model')

class Blog extends Model {
    static get table () {
        return 'blogs' // Your table name
    }
    user () {
        return this.belongsTo('App/Models/User','user_create', 'id')
    }
}

module.exports = Blog
