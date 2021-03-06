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

ActiveRecord::Schema.define(:version => 20121126052003) do

  create_table "articles", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "slug"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "articles", ["user_id"], :name => "index_articles_on_user_id"

  create_table "comments", :force => true do |t|
    t.integer  "user_id"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "products", :force => true do |t|
    t.float    "average",       :default => 0.0
    t.text     "description"
    t.string   "name"
    t.date     "release_date"
    t.integer  "review_id"
    t.integer  "rating_sum",    :default => 0
    t.integer  "total_reviews", :default => 0
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "products", ["review_id"], :name => "index_products_on_review_id"

  create_table "reviews", :force => true do |t|
    t.integer  "old_rating", :default => 0
    t.integer  "rating"
    t.integer  "votes",      :default => 0
    t.integer  "product_id"
    t.integer  "user_id"
    t.string   "title"
    t.string   "written_by"
    t.text     "content"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "reviews", ["product_id"], :name => "index_reviews_on_product_id"
  add_index "reviews", ["user_id"], :name => "index_reviews_on_user_id"

  create_table "users", :force => true do |t|
    t.boolean  "admin",                  :default => false
    t.integer  "review_vote_total",      :default => 0
    t.string   "name"
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.text     "products_reviewed"
    t.text     "reviews_voted_on"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
