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

ActiveRecord::Schema.define(version: 20180307153254) do

  create_table "companies_infos", force: :cascade do |t|
    t.string   "company_name"
    t.integer  "users_info_id"
    t.integer  "Job_m_id"
    t.integer  "is_deleted",    null: false
    t.text     "url"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["Job_m_id"], name: "index_companies_infos_on_Job_m_id"
    t.index ["users_info_id"], name: "index_companies_infos_on_users_info_id"
  end

  create_table "job_ms", force: :cascade do |t|
    t.string   "job_name"
    t.integer  "is_deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "position_ms", force: :cascade do |t|
    t.string   "position_name"
    t.integer  "is_deleted"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "companies_info_id"
    t.integer  "users_info_id",               null: false
    t.integer  "money",             limit: 1
    t.integer  "skill",             limit: 1
    t.integer  "work",              limit: 1
    t.integer  "age",               limit: 1
    t.integer  "is_deleted",        limit: 1
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["companies_info_id"], name: "index_ratings_on_companies_info_id"
    t.index ["users_info_id"], name: "index_ratings_on_users_info_id"
  end

  create_table "users_infos", force: :cascade do |t|
    t.string   "password"
    t.string   "user_name"
    t.integer  "job_m_id"
    t.integer  "position_m_id"
    t.integer  "age"
    t.integer  "is_deleted"
    t.text     "address"
    t.string   "version"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["job_m_id"], name: "index_users_infos_on_job_m_id"
    t.index ["position_m_id"], name: "index_users_infos_on_position_m_id"
  end

end
