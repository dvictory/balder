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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120123072346) do

  create_table "balder_albums", :force => true do |t|
    t.string   "title",       :null => false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "path"
    t.string   "address"
    t.float    "longitude"
    t.float    "latitude"
    t.text     "note"
  end

  add_index "balder_albums", ["id"], :name => "index_balder_albums_on_id", :unique => true

  create_table "balder_collection_albums", :force => true do |t|
    t.integer  "collection_id"
    t.integer  "album_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "balder_collection_albums", ["album_id"], :name => "index_balder_collection_albums_on_album_id"
  add_index "balder_collection_albums", ["collection_id"], :name => "index_balder_collection_albums_on_collection_id"

  create_table "balder_collections", :force => true do |t|
    t.string   "title",       :null => false
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "balder_collections", ["id"], :name => "index_balder_collections_on_id", :unique => true

  create_table "balder_permissions", :force => true do |t|
    t.integer  "permissible_id"
    t.string   "permissible_type"
    t.string   "action"
    t.boolean  "granted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "balder_photo_tags", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "photo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "balder_photo_tags", ["photo_id"], :name => "index_balder_photo_tags_on_photo_id"
  add_index "balder_photo_tags", ["tag_id"], :name => "index_balder_photo_tags_on_tag_id"

  create_table "balder_photos", :force => true do |t|
    t.string   "title",       :null => false
    t.text     "description"
    t.integer  "album_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "path"
    t.float    "longitude"
    t.float    "latitude"
    t.string   "file"
  end

  add_index "balder_photos", ["album_id"], :name => "index_balder_photos_on_album_id"
  add_index "balder_photos", ["id"], :name => "index_balder_photos_on_id", :unique => true

  create_table "balder_role_memberships", :force => true do |t|
    t.integer  "roleable_id"
    t.string   "roleable_type"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "balder_roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "balder_tags", :force => true do |t|
    t.string   "title",      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "balder_tags", ["id"], :name => "index_balder_tags_on_id", :unique => true

  create_table "balder_users", :force => true do |t|
    t.string   "email",                              :null => false
    t.string   "crypted_password",                   :null => false
    t.string   "password_salt",                      :null => false
    t.string   "persistence_token",                  :null => false
    t.string   "single_access_token",                :null => false
    t.string   "perishable_token",                   :null => false
    t.integer  "login_count",         :default => 0, :null => false
    t.integer  "failed_login_count",  :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

end
