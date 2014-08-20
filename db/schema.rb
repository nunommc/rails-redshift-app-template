# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140820172427) do

  create_table "dimaddress.", id: false, force: true do |t|
    t.string "id",                  limit: 8,  null: false
    t.string "address",             limit: 60, null: false
    t.string "region",              limit: 60, null: false
    t.string "franchise_territory", limit: 60, null: false
    t.string "udprn",               limit: 60, null: false
    t.string "country",             limit: 3,  null: false
  end

  create_table "dimtime.", id: false, force: true do |t|
    t.string  "id",          limit: 25, null: false
    t.integer "year",                   null: false
    t.string  "season",      limit: 6,  null: false
    t.integer "quarter",                null: false
    t.integer "month",                  null: false
    t.integer "week",                   null: false
    t.integer "day",                    null: false
    t.integer "hour",                   null: false
    t.integer "minute",                 null: false
    t.string  "day_of_week", limit: 3,  null: false
  end

  create_table "factsale.", id: false, force: true do |t|
    t.integer  "id"
    t.string   "started_at",       limit: 25
    t.integer  "charged_amount"
    t.integer  "estimated_amount"
    t.string   "location",         limit: 8
    t.datetime "created_at"
  end

  create_table "schema_migrations.", id: false, force: true do |t|
    t.string "version", null: false
  end

end
