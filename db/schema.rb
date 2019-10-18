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

ActiveRecord::Schema.define(version: 2019_10_18_204509) do

  create_table "cheese_milks", force: :cascade do |t|
    t.integer "cheese_id"
    t.integer "milk_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cheese_id"], name: "index_cheese_milks_on_cheese_id"
    t.index ["milk_id"], name: "index_cheese_milks_on_milk_id"
  end

  create_table "cheese_textures", force: :cascade do |t|
    t.integer "cheese_id"
    t.integer "texture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cheese_id"], name: "index_cheese_textures_on_cheese_id"
    t.index ["texture_id"], name: "index_cheese_textures_on_texture_id"
  end

  create_table "cheeses", force: :cascade do |t|
    t.string "name"
    t.string "creamery"
    t.string "origin"
    t.string "notes"
    t.string "rind"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flavor_wheels", force: :cascade do |t|
    t.integer "cheese_id"
    t.integer "flavor_id"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cheese_id"], name: "index_flavor_wheels_on_cheese_id"
    t.index ["flavor_id"], name: "index_flavor_wheels_on_flavor_id"
  end

  create_table "flavors", force: :cascade do |t|
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "milks", force: :cascade do |t|
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "textures", force: :cascade do |t|
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
