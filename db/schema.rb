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

ActiveRecord::Schema.define(version: 2018_09_01_195553) do

  create_table "colectors", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "email"
    t.boolean "course_approved"
    t.boolean "validation"
    t.datetime "date_inscription"
    t.integer "phone_id"
    t.integer "colector_has_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["colector_has_user_id"], name: "index_colectors_on_colector_has_user_id"
    t.index ["phone_id"], name: "index_colectors_on_phone_id"
  end

  create_table "colectors_profiles", id: false, force: :cascade do |t|
    t.integer "profile_id", null: false
    t.integer "colector_id", null: false
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
    t.string "total_recicled"
    t.string "total_delivered"
    t.datetime "creation_date"
    t.integer "course_id"
    t.integer "donations_id"
    t.integer "complaints_id"
    t.integer "users_id"
    t.integer "colector_id"
    t.integer "boxs_id"
    t.integer "recicle_report_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boxs_id"], name: "index_profiles_on_boxs_id"
    t.index ["colector_id"], name: "index_profiles_on_colector_id"
    t.index ["complaints_id"], name: "index_profiles_on_complaints_id"
    t.index ["course_id"], name: "index_profiles_on_course_id"
    t.index ["donations_id"], name: "index_profiles_on_donations_id"
    t.index ["recicle_report_id"], name: "index_profiles_on_recicle_report_id"
    t.index ["users_id"], name: "index_profiles_on_users_id"
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

end
