'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class CommentSchema extends Schema {
  up () {
    this.create('comments', (table) => {
      table.increments()
      table.integer('user_create').unsigned().notNullable()
      table.foreign('user_create').references('id').inTable('users')
      table.integer('episode_id').unsigned().notNullable()
      table.foreign('episode_id').references('id').inTable('episode')
      table.text('comment','longtext').notNullable()
      table.timestamps()
    })
  }

  down () {
    this.drop('comments')
  }
}

module.exports = CommentSchema
