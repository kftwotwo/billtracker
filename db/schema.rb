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

ActiveRecord::Schema.define(version: 20170511053034) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "user_id"
    t.string   "account_name"
    t.string   "account_number"
    t.string   "kind"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "bills", force: :cascade do |t|
    t.text     "name"
    t.date     "next_due_date"
    t.float    "amount"
    t.string   "account_number"
    t.integer  "company_id"
    t.integer  "user_id"
    t.integer  "credit_card_id"
    t.integer  "loan_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "account_id"
  end

  create_table "categories", force: :cascade do |t|
    t.integer "bill_id"
    t.string  "kind"
  end

  create_table "companies", force: :cascade do |t|
    t.integer "user_id"
    t.string  "name"
    t.string  "website"
  end

  create_table "credit_cards", force: :cascade do |t|
    t.integer "user_id"
    t.integer "account_id"
    t.integer "company_id"
    t.integer "bill_id"
    t.integer "frequency_id"
    t.string  "name_on_card"
    t.string  "card_number"
    t.string  "expiration_date_month"
    t.string  "expiration_date_year"
    t.float   "amount"
    t.float   "balance"
  end

  create_table "debit_cards", force: :cascade do |t|
    t.integer "user_id"
    t.integer "account_id"
    t.integer "company_id"
    t.integer "bill_id"
    t.string  "name_on_card"
    t.integer "card_number"
    t.string  "expiration_date_month"
    t.string  "expiration_date_year"
    t.float   "balance"
  end

  create_table "frequencies", force: :cascade do |t|
    t.integer  "bill_id"
    t.string   "weekly"
    t.string   "bi_weekly"
    t.string   "tri_weekly"
    t.string   "monthly"
    t.integer  "credit_card_id"
    t.integer  "debit_card_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "loans", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "company_id"
    t.integer  "account_id"
    t.float    "interest"
    t.float    "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string  "notable_type"
    t.integer "notable_id"
    t.text    "entry"
    t.integer "bill_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "account_id"
    t.integer  "bill_id"
    t.integer  "company_id"
    t.float    "amount"
    t.integer  "credit_card_id"
    t.integer  "debit_card_id"
    t.integer  "loan_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
