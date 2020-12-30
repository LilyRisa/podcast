'use strict'

/** @type {typeof import('@adonisjs/lucid/src/Lucid/Model')} */
const Model = use('Model')

class Tags extends Model {
    static get table () {
        return 'tags' // Your table name
    }
    episode () {
        return this.belongsToMany('App/Models/Episode').pivotTable('episode_tags')
     }
    
}

module.exports = Tags
