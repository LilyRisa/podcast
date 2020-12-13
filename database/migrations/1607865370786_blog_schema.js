'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class BlogSchema extends Schema {
  up () {
    this.create('blogs', (table) => {
      table.increments()
      table.integer('user_create').unsigned().notNullable()
      table.foreign('user_create').references('id').inTable('users')
      table.text('cover')
      table.text('blog','longtext').notNullable()
      table.timestamps()
    })
  }

  down () {
    this.drop('blogs')
  }
}

module.exports = BlogSchema
