'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class CategorySchema extends Schema {
  up () {
    this.create('categories', (table) => {
      table.increments().primary()
      table.integer('user_create').unsigned().notNullable()
      table.foreign('user_create').references('id').inTable('users')
      table.string('name',254).notNullable().unique()
      table.text('descriptions','longtext').notNullable()
      table.text('thumb')
      table.timestamps()
    })
  }

  down () {
    this.drop('categories')
  }
}

module.exports = CategorySchema
