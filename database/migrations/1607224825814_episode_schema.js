'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class EpisodeSchema extends Schema {
  up () {
    this.create('episode', (table) => {
      table.increments().primary()
      table.integer('category_id').unsigned().notNullable()
      table.foreign('category_id').references('id').inTable('categories')
      table.text('title').notNullable()
      table.text('descriptions','longtext').notNullable()
      table.integer('user_create').unsigned().notNullable()
      table.foreign('user_create').references('id').inTable('users')
      table.text('path_audio','longtext').notNullable()
      table.text('images','longtext')
      table.text('policy')
      table.timestamps()
    })
  }

  down () {
    this.drop('episode')
  }
}

module.exports = EpisodeSchema
