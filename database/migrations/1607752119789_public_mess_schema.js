'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class PublicMessSchema extends Schema {
  up () {
    this.create('publicmess', (table) => {
      table.increments()
      table.integer('user_sent').unsigned().notNullable()
      table.foreign('user_sent').references('id').inTable('users')
      table.text('messenges','longtext').notNullable()
      table.text('image')
      table.timestamps()
    })
  }

  down () {
    this.drop('public_messes')
  }
}

module.exports = PublicMessSchema
