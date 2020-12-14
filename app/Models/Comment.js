'use strict'

/** @type {typeof import('@adonisjs/lucid/src/Lucid/Model')} */
const Model = use('Model')

class Comment extends Model {
    static get table () {
        return 'comments' // Your table name
    }
    user () {
        return this.belongsTo('App/Models/User','user_create', 'id')
    }
    episode () {
        return this.belongsTo('App/Models/Episode','episode_id', 'id')
    }
}

module.exports = Comment
