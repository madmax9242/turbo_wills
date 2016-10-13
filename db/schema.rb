# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20161013224505) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "first_scenarios", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "ami_cc_only",    default: "0"
    t.string   "ami_cc_plus",    default: "0"
    t.string   "ami_reg_med",    default: "0"
    t.string   "ami_invasive",   default: "0"
    t.string   "ami_respirator", default: "0"
    t.string   "ami_dialysis",   default: "0"
    t.string   "ami_cpr",        default: "0"
    t.string   "bi_cc_only",     default: "0"
    t.string   "bi_cc_plus",     default: "0"
    t.string   "bi_reg_med",     default: "0"
    t.string   "bi_invasive",    default: "0"
    t.string   "bi_respirator",  default: "0"
    t.string   "bi_dialysis",    default: "0"
    t.string   "bi_cpr",         default: "0"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "fourth_scenarios", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "ami_cc_only",    default: "0"
    t.string   "ami_cc_plus",    default: "0"
    t.string   "ami_reg_med",    default: "0"
    t.string   "ami_invasive",   default: "0"
    t.string   "ami_respirator", default: "0"
    t.string   "ami_dialysis",   default: "0"
    t.string   "ami_cpr",        default: "0"
    t.string   "bi_cc_only",     default: "0"
    t.string   "bi_cc_plus",     default: "0"
    t.string   "bi_reg_med",     default: "0"
    t.string   "bi_invasive",    default: "0"
    t.string   "bi_respirator",  default: "0"
    t.string   "bi_dialysis",    default: "0"
    t.string   "bi_cpr",         default: "0"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "results", force: :cascade do |t|
    t.integer  "first_scenario_id"
    t.integer  "second_scenario_id"
    t.integer  "third_scenario_id"
    t.integer  "fourth_scenario_id"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "comments"
    t.string   "mpoa"
    t.string   "mpoa_name"
    t.string   "review_with_mpoa"
  end

  create_table "second_scenarios", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "ami_cc_only",    default: "0"
    t.string   "ami_cc_plus",    default: "0"
    t.string   "ami_reg_med",    default: "0"
    t.string   "ami_invasive",   default: "0"
    t.string   "ami_respirator", default: "0"
    t.string   "ami_dialysis",   default: "0"
    t.string   "ami_cpr",        default: "0"
    t.string   "bi_cc_only",     default: "0"
    t.string   "bi_cc_plus",     default: "0"
    t.string   "bi_reg_med",     default: "0"
    t.string   "bi_invasive",    default: "0"
    t.string   "bi_respirator",  default: "0"
    t.string   "bi_dialysis",    default: "0"
    t.string   "bi_cpr",         default: "0"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "third_scenarios", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "ami_cc_only",    default: "0"
    t.string   "ami_cc_plus",    default: "0"
    t.string   "ami_reg_med",    default: "0"
    t.string   "ami_invasive",   default: "0"
    t.string   "ami_respirator", default: "0"
    t.string   "ami_dialysis",   default: "0"
    t.string   "ami_cpr",        default: "0"
    t.string   "bi_cc_only",     default: "0"
    t.string   "bi_cc_plus",     default: "0"
    t.string   "bi_reg_med",     default: "0"
    t.string   "bi_invasive",    default: "0"
    t.string   "bi_respirator",  default: "0"
    t.string   "bi_dialysis",    default: "0"
    t.string   "bi_cpr",         default: "0"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",            null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "quality_of_life"
    t.string   "date_completed"
    t.string   "person_helping"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
