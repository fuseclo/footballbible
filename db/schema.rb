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

ActiveRecord::Schema.define(version: 20140718140612) do

  create_table "articles", force: true do |t|
    t.string   "article_title"
    t.text     "article_small"
    t.text     "article_big"
    t.string   "article_image"
    t.integer  "player_id"
    t.integer  "club_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clubs", force: true do |t|
    t.string   "club_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "player_name"
    t.string   "player_nation"
    t.integer  "player_number"
    t.integer  "club_id"
    t.integer  "player_goals"
    t.integer  "player_assists"
    t.integer  "player_passes"
    t.string   "player_position"
    t.string   "player_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
