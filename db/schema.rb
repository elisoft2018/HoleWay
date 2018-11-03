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

ActiveRecord::Schema.define(version: 20181103170433) do

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "report_id"
    t.string "comment", limit: 1000
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id"], name: "index_comments_on_report_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "damages", force: :cascade do |t|
    t.string "name", limit: 50
    t.integer "level"
    t.integer "severity"
    t.boolean "enabled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_damages_on_name"
    t.index ["severity"], name: "index_damages_on_severity"
  end

  create_table "privileges", force: :cascade do |t|
    t.integer "user_id"
    t.string "privilege", limit: 50
    t.boolean "enabled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_privileges_on_user_id"
  end

  create_table "reports", force: :cascade do |t|
    t.integer "damage_id"
    t.string "photography", limit: 256
    t.string "location", limit: 256
    t.string "comment", limit: 1000
    t.boolean "enabled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["damage_id"], name: "index_reports_on_damage_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", limit: 50
    t.string "email"
    t.string "password", limit: 255
    t.string "name", limit: 60
    t.string "surmane", limit: 60
    t.string "address", limit: 100
    t.string "token", limit: 100
    t.boolean "enabled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
