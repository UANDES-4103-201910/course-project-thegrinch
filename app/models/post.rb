class Post < ApplicationRecord
  belongs_to :user
  has_many :upvote_posts, :as => :likable_post
  has_many :downvote_posts, :as => :unlikable_post
  has_many :mark_innapropiateds, :as => :inappropriate
end
