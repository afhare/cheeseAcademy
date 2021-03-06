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

ActiveRecord::Schema.define(version: 2019_10_29_171046) do

  create_table "cheeses", force: :cascade do |t|
    t.string "name"
    t.string "creamery"
    t.string "origin"
    t.string "notes"
    t.string "rind"
    t.string "milk"
    t.string "texture"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flavor_profiles", force: :cascade do |t|
    t.integer "cheese_id"
    t.integer "flavor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cheese_id"], name: "index_flavor_profiles_on_cheese_id"
    t.index ["flavor_id"], name: "index_flavor_profiles_on_flavor_id"
  end

  create_table "flavor_taste_categories", force: :cascade do |t|
    t.integer "flavor_id"
    t.integer "taste_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flavor_id"], name: "index_flavor_taste_categories_on_flavor_id"
    t.index ["taste_id"], name: "index_flavor_taste_categories_on_taste_id"
  end

  create_table "flavors", force: :cascade do |t|
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tastes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
