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

ActiveRecord::Schema.define(version: 20190610025900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "constituents", force: :cascade do |t|
    t.string "constituent_name"
    t.bigint "source_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["source_id"], name: "index_constituents_on_source_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "description"
    t.bigint "location_id"
    t.bigint "menu_id"
    t.datetime "event_time"
    t.boolean "is_approved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_events_on_location_id"
    t.index ["menu_id"], name: "index_events_on_menu_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.bigint "recipe_id"
    t.bigint "constituent_id"
    t.integer "quantity"
    t.string "quantity_unit_of_measure"
    t.integer "servings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["constituent_id"], name: "index_ingredients_on_constituent_id"
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name", limit: 255
    t.string "address_line_1", limit: 100
    t.string "address_line_2", limit: 100
    t.string "city", limit: 50
    t.string "state_code", limit: 2
    t.string "zip", limit: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
  end

  create_table "menu_recipes", force: :cascade do |t|
    t.bigint "menu_id"
    t.bigint "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_menu_recipes_on_menu_id"
    t.index ["recipe_id"], name: "index_menu_recipes_on_recipe_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "description", limit: 255
    t.string "title", limit: 50
    t.string "years_involved", limit: 4
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
  end
create_table "messages", force: :cascade do |t|
    t.boolean "rsvp"
    t.bigint "participant_id"
    t.boolean "is_paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["participant_id"], name: "index_messages_on_participant_id"
  end

  create_table "participants", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "event_id"
    t.integer "participant_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_participants_on_event_id"
    t.index ["user_id"], name: "index_participants_on_user_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "description", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
  end

  create_table "sources", force: :cascade do |t|
    t.string "description"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_sources_on_location_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "constituents", "sources"
  add_foreign_key "events", "locations"
  add_foreign_key "events", "menus"
  add_foreign_key "ingredients", "constituents"
  add_foreign_key "ingredients", "recipes"
  add_foreign_key "menu_recipes", "menus"
  add_foreign_key "menu_recipes", "recipes"
  add_foreign_key "messages", "participants"
  add_foreign_key "participants", "events"
  add_foreign_key "participants", "users"
  add_foreign_key "sources", "locations"
end
