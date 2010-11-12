# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101112021418) do

  create_table "candidates", :force => true do |t|
    t.string   "name"
    t.string   "ward"
    t.string   "website"
    t.string   "twitter"
    t.string   "youtube"
    t.string   "email"
    t.string   "facebook"
    t.string   "rss"
    t.text     "office"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "mentions", :force => true do |t|
    t.integer  "candidate_id"
    t.integer  "newsarticle_id"
    t.text     "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newsarticles", :force => true do |t|
    t.string   "title"
    t.string   "source"
    t.datetime "pubdate"
    t.text     "gnews_url"
    t.string   "url"
    t.text     "rejection"
    t.string   "moderation", :default => "new"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "head"
  end

  create_table "posts", :force => true do |t|
    t.string   "name"
    t.date     "date"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wards", :force => true do |t|
    t.string   "name"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
