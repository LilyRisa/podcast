'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class EpisodeTagSchema extends Schema {
  up () {
    this.create('episode_tags', (table) => {
      table.integer('episode_id').unsigned().notNullable()
      table.foreign('episode_id').references('id').inTable('episode')
      table.integer('tag_id').unsigned().notNullable()
      table.foreign('tag_id').references('id').inTable('tags')
    })
  }

  down () {
    this.drop('episode_tags')
  }
}

module.exports = EpisodeTagSchema
