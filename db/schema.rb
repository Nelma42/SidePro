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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160722125135) do
=======
ActiveRecord::Schema.define(version: 20160721120917) do
>>>>>>> 5cbabe482e9db085c3735b4b9c93194b2f5960ef

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "postalcodes", force: :cascade do |t|
    t.integer "code"
  end

  create_table "restos", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "snacks", force: :cascade do |t|
    t.string  "brand"
    t.string  "adress"
    t.text    "comment"
    t.integer "category_id"
  end

  add_index "snacks", ["category_id"], name: "index_snacks_on_category_id"

end