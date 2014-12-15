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

ActiveRecord::Schema.define(version: 20141215192927) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "experiences", force: true do |t|
    t.string   "title"
    t.float    "price"
    t.integer  "amount_available"
    t.string   "availability"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "orders", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "phone_number"
    t.string   "card_name"
    t.integer  "card_number"
    t.string   "expiration_date"
    t.integer  "security_code"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "zip_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "artist_name"
    t.string   "genre"
    t.string   "bio"
    t.string   "contact_name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.string   "email"
    t.string   "password_digest"
    t.string   "bank_name"
    t.string   "account_holder_name"
    t.string   "account_type"
    t.integer  "account_number"
    t.integer  "routing_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
