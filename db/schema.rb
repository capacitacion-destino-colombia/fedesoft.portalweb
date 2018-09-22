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

ActiveRecord::Schema.define(version: 2018_09_15_203802) do

  create_table "colectors", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "email"
    t.boolean "course_approved"
    t.boolean "validation"
    t.datetime "date_inscription"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colectors_profiles", id: false, force: :cascade do |t|
    t.integer "profile_id", null: false
    t.integer "colector_id", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "name_course"
    t.binary "videoImg_course"
    t.text "course_content"
    t.boolean "course_checked_video"
    t.integer "course_scale_order"
    t.datetime "course_date_viwed"
    t.boolean "course_colector_video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "donations", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.string "type"
    t.integer "account"
    t.datetime "date"
    t.integer "id_perfil_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_perfil_id"], name: "index_donations_on_id_perfil_id"
  end

  create_table "donations_profiles", id: false, force: :cascade do |t|
    t.integer "donation_id", null: false
    t.integer "profile_id", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "date"
    t.integer "number_order"
    t.integer "weight_colection"
    t.boolean "confirmation"
    t.boolean "state"
    t.integer "value_credits"
    t.integer "user_id"
    t.integer "colector_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["colector_id"], name: "index_orders_on_colector_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

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

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.string "rank"
    t.integer "credits"
    t.integer "stars"
    t.integer "pickups"
    t.binary "picture"
    t.binary "medal"
    t.boolean "course_validation"
    t.boolean "colector_validation"
    t.integer "deliveries"
    t.float "total_recicled"
    t.float "total_delivered"
    t.datetime "creation_date"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_profiles_on_course_id"
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
