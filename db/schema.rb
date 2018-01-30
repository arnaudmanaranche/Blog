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

ActiveRecord::Schema.define(version: 20180130091846) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url"
    t.boolean "online", default: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.integer "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "content"
  end

  create_table "messages", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_models_on_email", unique: true
    t.index ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true
  end

  create_table "simple_admin_entities", force: :cascade do |t|
    t.string "model_klass_name", null: false
    t.string "label"
    t.boolean "status", default: true
    t.boolean "inbuilt", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "simple_admin_entity_field_settings", force: :cascade do |t|
    t.string "name"
    t.string "value"
    t.integer "entity_field_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "simple_admin_entity_field_types", force: :cascade do |t|
    t.string "name"
    t.string "template"
    t.boolean "inbuilt", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "simple_admin_entity_fields", force: :cascade do |t|
    t.string "name"
    t.string "label"
    t.integer "entity_field_type_id", null: false
    t.integer "entity_id", null: false
    t.integer "presentation"
    t.integer "sort_order", default: 0
    t.boolean "search_indexable", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
