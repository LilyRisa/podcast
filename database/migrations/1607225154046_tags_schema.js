'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class TagsSchema extends Schema {
  up () {
    this.create('tags', (table) => {
      table.increments().primary()
      table.string('name',100).unique()
      table.timestamps()
    })
  }

  down () {
    this.drop('tags')
  }
}

module.exports = TagsSchema
