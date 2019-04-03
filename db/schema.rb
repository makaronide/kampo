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

ActiveRecord::Schema.define(version: 20190403070657) do

  create_table "conditions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kampo_shoyaku_relations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "kampo_id"
    t.integer  "shoyaku_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kampo_id"], name: "index_kampo_shoyaku_relations_on_kampo_id", using: :btree
    t.index ["shoyaku_id"], name: "index_kampo_shoyaku_relations_on_shoyaku_id", using: :btree
  end

  create_table "kampos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.text     "description",  limit: 65535
    t.integer  "condition_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["condition_id"], name: "index_kampos_on_condition_id", using: :btree
  end

  create_table "questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "condition_id"
    t.text     "content",      limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "kampo_id"
    t.index ["condition_id"], name: "index_questions_on_condition_id", using: :btree
    t.index ["kampo_id"], name: "index_questions_on_kampo_id", using: :btree
  end

  create_table "shoyakus", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.text     "picture_file", limit: 65535
    t.text     "description",  limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name_sei",        null: false
    t.string   "name_mei",        null: false
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

  add_foreign_key "kampo_shoyaku_relations", "kampos"
  add_foreign_key "kampo_shoyaku_relations", "shoyakus"
  add_foreign_key "kampos", "conditions"
  add_foreign_key "questions", "conditions"
  add_foreign_key "questions", "kampos"
end
