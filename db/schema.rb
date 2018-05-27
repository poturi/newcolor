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

  create_table "companies_infos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "company_name",  limit: 200,               null: false
    t.integer  "users_info_id",                           null: false
    t.integer  "job_m_id",                                null: false
    t.integer  "is_deleted",    limit: 1,     default: 0, null: false
    t.text     "url",           limit: 65535
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.index ["job_m_id"], name: "index_companies_infos_on_job_m_id", using: :btree
    t.index ["users_info_id"], name: "index_companies_infos_on_users_info_id", using: :btree
  end

  create_table "job_ms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "job_name",   limit: 50,             null: false
    t.integer  "is_deleted", limit: 1,  default: 0, null: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "position_ms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "position_name", limit: 25,             null: false
    t.integer  "is_deleted",    limit: 1,  default: 0, null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "ratings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "companies_info_id",                       null: false
    t.integer  "users_info_id",                           null: false
    t.integer  "money",             limit: 1,             null: false
    t.integer  "skill",             limit: 1,             null: false
    t.integer  "work",              limit: 1,             null: false
    t.integer  "age",               limit: 1, default: 0, null: false
    t.integer  "is_deleted",        limit: 1, default: 0, null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.index ["companies_info_id"], name: "index_ratings_on_companies_info_id", using: :btree
    t.index ["users_info_id"], name: "index_ratings_on_users_info_id", using: :btree
  end

  create_table "users_infos", force: :cascade do |t|
    t.string   "password",      limit: 60,              null: false
    t.string   "user_name",     limit: 20,              null: false
    t.integer  "job_m_id"
    t.integer  "position_m_id"
    t.integer  "age",           limit: 1,               null: false
    t.integer  "is_deleted",    limit: 1,   default: 0, null: false
    t.text     "address",       limit: 320,             null: false
    t.string   "version",       limit: 5
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.index ["job_m_id"], name: "index_users_infos_on_job_m_id"
    t.index ["position_m_id"], name: "index_users_infos_on_position_m_id"

  create_table "users_infos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "password",      limit: 60,                  null: false
    t.string   "user_name",     limit: 20,                  null: false
    t.integer  "job_m_id"
    t.integer  "position_m_id"
    t.integer  "age",           limit: 1,                   null: false
    t.integer  "is_deleted",    limit: 1,     default: 0,   null: false
    t.text     "address",       limit: 65535,               null: false
    t.string   "version",       limit: 5,     default: "1"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.index ["job_m_id"], name: "index_users_infos_on_job_m_id", using: :btree
    t.index ["position_m_id"], name: "index_users_infos_on_position_m_id", using: :btree

  end

  add_foreign_key "companies_infos", "job_ms"
  add_foreign_key "companies_infos", "users_infos"
  add_foreign_key "ratings", "companies_infos"
  add_foreign_key "ratings", "users_infos"
  add_foreign_key "users_infos", "job_ms"
  add_foreign_key "users_infos", "position_ms"
end
