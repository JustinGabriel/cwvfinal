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

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20130723022129) do

  create_table "bookmarks", :force => true do |t|
    t.integer  "bookmarker_id"
    t.integer  "bookmarked_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "bookmarks", ["bookmarked_id"], :name => "index_bookmarks_on_bookmarked_id"
  add_index "bookmarks", ["bookmarker_id", "bookmarked_id"], :name => "index_bookmarks_on_bookmarker_id_and_bookmarked_id", :unique => true
  add_index "bookmarks", ["bookmarker_id"], :name => "index_bookmarks_on_bookmarker_id"

  create_table "follows", :force => true do |t|
    t.string   "follower_type"
    t.integer  "follower_id"
    t.string   "followable_type"
    t.integer  "followable_id"
    t.datetime "created_at"
  end

  add_index "follows", ["followable_id", "followable_type"], :name => "fk_followables"
  add_index "follows", ["follower_id", "follower_type"], :name => "fk_follows"

  create_table "likes", :force => true do |t|
    t.string   "liker_type"
    t.integer  "liker_id"
    t.string   "likeable_type"
    t.integer  "likeable_id"
    t.datetime "created_at"
  end

  add_index "likes", ["likeable_id", "likeable_type"], :name => "fk_likeables"
  add_index "likes", ["liker_id", "liker_type"], :name => "fk_likes"

  create_table "lists", :force => true do |t|
    t.string "name"
  end

  create_table "mentions", :force => true do |t|
    t.string   "mentioner_type"
    t.integer  "mentioner_id"
    t.string   "mentionable_type"
    t.integer  "mentionable_id"
    t.datetime "created_at"
  end

  add_index "mentions", ["mentionable_id", "mentionable_type"], :name => "fk_mentionables"
  add_index "mentions", ["mentioner_id", "mentioner_type"], :name => "fk_mentions"

  create_table "messages", :force => true do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.boolean  "sender_deleted",    :default => false
    t.boolean  "recipient_deleted", :default => false
    t.string   "subject"
    t.text     "body"
    t.datetime "read_at"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end
=======
ActiveRecord::Schema.define(:version => 20130514224741) do
>>>>>>> 881ee705febd4004d6343ba22e02d84535086797

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
<<<<<<< HEAD
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "network",    :limit => nil
  end

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.string   "school"
    t.string   "major"
=======
    t.string   "author"
>>>>>>> 881ee705febd4004d6343ba22e02d84535086797
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

<<<<<<< HEAD
  create_table "recruiters", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "recruiters", ["email"], :name => "index_recruiters_on_email", :unique => true
  add_index "recruiters", ["reset_password_token"], :name => "index_recruiters_on_reset_password_token", :unique => true
=======
  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"
>>>>>>> 881ee705febd4004d6343ba22e02d84535086797

  create_table "relationships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "relationships", ["followed_id"], :name => "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], :name => "index_relationships_on_follower_id_and_followed_id", :unique => true
  add_index "relationships", ["follower_id"], :name => "index_relationships_on_follower_id"

  create_table "schools", :force => true do |t|
    t.integer  "user_id"
    t.string   "college"
    t.string   "major"
    t.string   "student"
    t.integer  "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",                          :default => false
    t.string   "industry"
    t.string   "location"
    t.string   "about"
    t.string   "status"
    t.string   "network",         :limit => nil
    t.string   "facebook",        :limit => nil
    t.string   "twitter",         :limit => nil
    t.string   "linkedin",        :limit => nil
    t.string   "pinterest",       :limit => nil
    t.string   "dob",             :limit => nil
    t.string   "headline",        :limit => nil
    t.string   "phone",           :limit => nil
    t.string   "website",         :limit => nil
  end

end
