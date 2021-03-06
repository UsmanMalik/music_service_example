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

ActiveRecord::Schema.define(:version => 20110630080653) do

  create_table "clips", :force => true do |t|
    t.string   "pid"
    t.string   "title"
    t.integer  "collection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "collections", :force => true do |t|
    t.string   "url_key"
    t.string   "pid"
    t.string   "title"
    t.string   "artists"
    t.string   "short_synopsis"
    t.string   "medium_synopsis"
    t.string   "url"
    t.integer  "status"
    t.integer  "user_id"
    t.integer  "featured_position"
    t.integer  "use_pips"
    t.integer  "has_image"
    t.datetime "promoted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "playlists", :force => true do |t|
    t.integer  "user_id"
    t.integer  "status",          :default => 0
    t.string   "title"
    t.string   "medium_synopsis"
    t.string   "url_key"
    t.string   "short_synopsis"
    t.datetime "promoted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "name"
    t.string   "bbcid"
    t.string   "brand_pid"
    t.string   "short_synopsis"
    t.string   "medium_synopsis"
    t.string   "artist_gid"
    t.integer  "featured_position"
    t.integer  "status"
    t.integer  "is_guide",          :default => 0
    t.integer  "is_superuser",      :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
