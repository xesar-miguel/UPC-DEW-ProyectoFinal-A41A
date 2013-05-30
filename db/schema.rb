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

ActiveRecord::Schema.define(:version => 20130519073247) do

  create_table "bands", :force => true do |t|
    t.string   "name"
    t.string   "genre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bookings", :force => true do |t|
    t.string   "description"
    t.datetime "start"
    t.datetime "end"
    t.integer  "year"
    t.integer  "month"
    t.integer  "day"
    t.integer  "dayofweek"
    t.integer  "lounge_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "bookings", ["lounge_id"], :name => "index_bookings_on_lounge_id"

  create_table "comments", :force => true do |t|
    t.string   "content"
    t.string   "ordinal"
    t.integer  "author_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["author_id"], :name => "index_comments_on_author_id"

  create_table "concerts", :force => true do |t|
    t.string   "name"
    t.integer  "score_id"
    t.integer  "owner_id"
    t.integer  "band_id"
    t.integer  "lounge_id"
    t.integer  "booking_id"
    t.integer  "status_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "concerts", ["band_id"], :name => "index_concerts_on_band_id"
  add_index "concerts", ["booking_id"], :name => "index_concerts_on_booking_id"
  add_index "concerts", ["lounge_id"], :name => "index_concerts_on_lounge_id"
  add_index "concerts", ["owner_id"], :name => "index_concerts_on_owner_id"
  add_index "concerts", ["score_id"], :name => "index_concerts_on_score_id"
  add_index "concerts", ["status_id"], :name => "index_concerts_on_status_id"

  create_table "concertstatuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "distritos", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lounges", :force => true do |t|
    t.string   "name"
    t.string   "direction"
    t.string   "geolocation"
    t.string   "phone"
    t.integer  "distrito_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "lounges", ["distrito_id"], :name => "index_lounges_on_distrito_id"

  create_table "scores", :force => true do |t|
    t.integer  "value"
    t.string   "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tickets", :force => true do |t|
    t.integer  "user_id"
    t.integer  "concert_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_bands", :force => true do |t|
    t.integer  "user_id"
    t.integer  "band_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.string   "dni"
    t.string   "tui"
    t.string   "gender"
    t.string   "givenname"
    t.string   "lastname1"
    t.string   "lastname2"
    t.integer  "usertype_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "users", ["usertype_id"], :name => "index_users_on_usertype_id"

  create_table "usertypes", :force => true do |t|
    t.string   "name"
    t.boolean  "administrator"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
