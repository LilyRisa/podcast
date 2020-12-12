'use strict'

/** @type {typeof import('@adonisjs/lucid/src/Lucid/Model')} */
const Model = use('Model')

class PublicMess extends Model {
    static get table () {
        return 'publicmess' // Your table name
    }
    user () {
        return this.belongsTo('App/Models/User','user_sent', 'id')
    }
}

module.exports = PublicMess
