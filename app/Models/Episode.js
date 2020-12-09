'use strict'

/** @type {typeof import('@adonisjs/lucid/src/Lucid/Model')} */
const Model = use('Model')

class Episode extends Model {
    static get table () {
        return 'episode' // Your table name
    }
    user () {
        return this.belongsTo('App/Models/User')
    }
    category () {
        return this.belongsTo('App/Models/Category')
    }
    tag () {
        return this.belongsToMany('App/Models/Tags').pivotTable('episode_tags')
     }
    
}

module.exports = Episode
