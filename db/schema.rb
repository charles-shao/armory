# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_03_28_025733) do
  create_table "models", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.integer "category"
    t.integer "min_size"
    t.integer "max_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roster_models", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "roster_id"
    t.bigint "model_id"
    t.integer "unit_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["model_id"], name: "index_roster_models_on_model_id"
    t.index ["roster_id"], name: "index_roster_models_on_roster_id"
  end

  create_table "rosters", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.string "faction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_rosters_on_user_id"
  end

  create_table "units", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "model_id"
    t.string "name"
    t.integer "points", limit: 2
    t.integer "power", limit: 1
    t.integer "movement", limit: 1
    t.integer "weapon_skill", limit: 1
    t.integer "ballistic_skill", limit: 1
    t.integer "strength", limit: 1
    t.integer "toughness", limit: 1
    t.integer "wounds", limit: 1
    t.integer "attacks", limit: 1
    t.integer "leadership", limit: 1
    t.integer "sv", limit: 1
    t.integer "invulnerable_save", limit: 1
    t.integer "ranged_invulnerable_save", limit: 1
    t.integer "melee_invulnerable_save", limit: 1
    t.integer "fnp", limit: 1
    t.integer "mortal_fnp", limit: 1
    t.integer "wound_regen", limit: 1
    t.boolean "revivable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["model_id"], name: "index_units_on_model_id"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weapons", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "unit_id"
    t.string "name"
    t.integer "points", limit: 2
    t.string "category"
    t.string "attacks"
    t.integer "range", limit: 2
    t.string "strength"
    t.string "armor_penetration"
    t.string "damage"
    t.string "ability_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_weapons_on_unit_id"
  end

end
