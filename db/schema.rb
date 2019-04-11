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

ActiveRecord::Schema.define(version: 2019_04_09_135000) do

  create_table "achievement_users", force: :cascade do |t|
    t.integer "achievement_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["achievement_id"], name: "index_achievement_users_on_achievement_id"
    t.index ["user_id"], name: "index_achievement_users_on_user_id"
  end

  create_table "achievements", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blocks", force: :cascade do |t|
    t.integer "owner_id"
    t.integer "blocked_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blocked_id"], name: "index_blocks_on_blocked_id"
    t.index ["owner_id"], name: "index_blocks_on_owner_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_posts", force: :cascade do |t|
    t.integer "category_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_category_posts_on_category_id"
    t.index ["post_id"], name: "index_category_posts_on_post_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.integer "comment_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_comments_on_comment_id"
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "downvote_comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_downvote_comments_on_comment_id"
    t.index ["user_id"], name: "index_downvote_comments_on_user_id"
  end

  create_table "downvote_posts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_downvote_posts_on_post_id"
    t.index ["user_id"], name: "index_downvote_posts_on_user_id"
  end

  create_table "follow_posts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_follow_posts_on_post_id"
    t.index ["user_id"], name: "index_follow_posts_on_user_id"
  end

  create_table "follow_users", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["followed_id"], name: "index_follow_users_on_followed_id"
    t.index ["follower_id"], name: "index_follow_users_on_follower_id"
  end

  create_table "mark_innapropiateds", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_mark_innapropiateds_on_post_id"
    t.index ["user_id"], name: "index_mark_innapropiateds_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.string "description"
    t.string "location"
    t.boolean "dumped"
    t.integer "grinchrate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.integer "tagger_id"
    t.integer "tagged_id"
    t.integer "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_tags_on_comment_id"
    t.index ["tagged_id"], name: "index_tags_on_tagged_id"
    t.index ["tagger_id"], name: "index_tags_on_tagger_id"
  end

  create_table "upvote_comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_upvote_comments_on_comment_id"
    t.index ["user_id"], name: "index_upvote_comments_on_user_id"
  end

  create_table "upvote_posts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_upvote_posts_on_post_id"
    t.index ["user_id"], name: "index_upvote_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nickname"
    t.string "email"
    t.string "password"
    t.string "role"
    t.string "name"
    t.string "last_name"
    t.string "bio"
    t.string "location"
    t.string "geofence"
    t.string "profession"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
