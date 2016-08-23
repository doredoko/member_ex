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

ActiveRecord::Schema.define(version: 20160823083405) do

  create_table "electors", force: :cascade do |t|
    t.string   "name"
    t.string   "yomi"
    t.string   "town"
    t.string   "banchi"
    t.boolean  "kakunin",     default: false
    t.integer  "kazoku_id"
    t.string   "postal_code"
    t.string   "bikou"
    t.string   "tel_sinai"
    t.boolean  "kouenkai",    default: false
    t.boolean  "douki",       default: false
    t.integer  "kitaichi",    default: 0
    t.integer  "syoukai_id"
    t.boolean  "tehai_1",     default: false
    t.boolean  "tehai_2",     default: false
    t.boolean  "tehai_3",     default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "postal_code"
    t.string   "city"
    t.string   "town"
    t.string   "banchi"
    t.string   "tel_sigai",   default: "0855"
    t.string   "tel_sinai"
    t.string   "keitai"
    t.string   "bikou"
    t.float    "latitude"
    t.float    "longtude"
    t.boolean  "gmaps",       default: false
    t.boolean  "douki",       default: false
    t.boolean  "genki",       default: false
    t.boolean  "kouenkai",    default: false
    t.float    "kihukin",     default: 0.0
    t.integer  "syoukai_id"
    t.integer  "level",       default: 0
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

end
