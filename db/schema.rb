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

ActiveRecord::Schema.define(:version => 20140617071717) do

  create_table "certifications", :force => true do |t|
    t.string   "name"
    t.string   "authority"
    t.string   "license_number"
    t.string   "certification_link"
    t.date     "date_from"
    t.date     "date_to"
    t.integer  "user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "certifications", ["user_id"], :name => "index_certifications_on_user_id"

  create_table "educations", :force => true do |t|
    t.string   "school_name"
    t.string   "degree"
    t.string   "university"
    t.string   "filed_of_study"
    t.date     "date_from"
    t.date     "date_to"
    t.string   "grade"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "educations", ["user_id"], :name => "index_educations_on_user_id"

  create_table "expriences", :force => true do |t|
    t.string   "compnay_name"
    t.string   "designation"
    t.string   "location"
    t.date     "time_from"
    t.date     "time_to"
    t.boolean  "currently_working"
    t.string   "link"
    t.string   "upload_file"
    t.integer  "user_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "expriences", ["user_id"], :name => "index_expriences_on_user_id"

  create_table "languages", :force => true do |t|
    t.string   "name"
    t.string   "proficincy"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "languages", ["user_id"], :name => "index_languages_on_user_id"

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "occupation"
    t.date     "date_from"
    t.date     "date_to"
    t.integer  "team_size"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "projects", ["user_id"], :name => "index_projects_on_user_id"

  create_table "skills", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "skills", ["user_id"], :name => "index_skills_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "image"
    t.string   "phone"
    t.string   "headline"
    t.string   "location"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
