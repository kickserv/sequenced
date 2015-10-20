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

ActiveRecord::Schema.define(version: 20140404195334) do

  create_table "accounts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses", force: :cascade do |t|
    t.integer  "account_id", limit: 4
    t.string   "city",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id",   limit: 4
    t.text     "body",          limit: 65535
    t.integer  "sequential_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree
  add_index "answers", ["sequential_id"], name: "index_answers_on_sequential_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.integer  "question_id",   limit: 4
    t.text     "body",          limit: 65535
    t.integer  "sequential_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["question_id"], name: "index_comments_on_question_id", using: :btree

  create_table "emails", force: :cascade do |t|
    t.string   "emailable_type", limit: 255
    t.integer  "emailable_id",   limit: 4
    t.integer  "sequential_id",  limit: 4
    t.string   "address",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", force: :cascade do |t|
    t.integer  "amount",        limit: 4
    t.integer  "sequential_id", limit: 4
    t.integer  "account_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "invoices", ["account_id"], name: "index_invoices_on_account_id", using: :btree

  create_table "monsters", force: :cascade do |t|
    t.integer  "sequential_id", limit: 4
    t.string   "type",          limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: :cascade do |t|
    t.string   "product",    limit: 255
    t.integer  "account_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "policemen", force: :cascade do |t|
    t.integer  "sequential_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.integer  "account_id",    limit: 4
    t.integer  "sequential_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "summary",    limit: 255
    t.text     "body",       limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "comment_id",    limit: 4
    t.integer  "score",         limit: 4
    t.integer  "sequential_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string   "plan",          limit: 255
    t.integer  "sequential_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.integer  "account_id",           limit: 4
    t.string   "name",                 limit: 255
    t.integer  "custom_sequential_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["account_id"], name: "index_users_on_account_id", using: :btree

end
