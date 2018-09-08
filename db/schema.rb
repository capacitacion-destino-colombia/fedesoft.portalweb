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

ActiveRecord::Schema.define(version: 2018_09_01_192723) do

  create_table "phones", force: :cascade do |t|
    t.string "type_phone"
    t.string "number_phone"
    t.boolean "active_phone"
    t.datetime "date_create"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_phones_on_user_id"
  end

  create_table "rols", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rols_skills", id: false, force: :cascade do |t|
    t.integer "skill_id", null: false
    t.integer "rol_id", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "description"
    t.string "resource"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.boolean "approved_course"
    t.boolean "collector_validate"
    t.datetime "date_registration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
