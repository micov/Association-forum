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


ActiveRecord::Schema.define(:version => 20120527193643) do

  create_table "adverts", :force => true do |t|
    t.string   "heading"
    t.integer  "association_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "description"
    t.string   "location"
    t.string   "comprehensiveness"
    t.string   "contact"
    t.string   "applicationLink"
    t.string   "profile"
    t.string   "start"
    t.string   "end"
    t.date     "applicationDeadline"
  end

  add_index "adverts", ["association_id", "created_at"], :name => "index_adverts_on_association_id_and_created_at"

  create_table "associations", :force => true do |t|
    t.string   "name"
    t.string   "info"
    t.string   "webPage"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "associations_users", :id => false, :force => true do |t|
    t.integer "association_id"
    t.integer "user_id"
  end

  add_index "associations_users", ["association_id", "user_id"], :name => "index_associations_users_on_association_id_and_user_id"
  add_index "associations_users", ["user_id", "association_id"], :name => "index_associations_users_on_user_id_and_association_id"

  create_table "users", :force => true do |t|
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "liuid"
    t.boolean  "admin",      :default => false
  end

  add_index "users", ["liuid"], :name => "index_users_on_liuid", :unique => true

end
