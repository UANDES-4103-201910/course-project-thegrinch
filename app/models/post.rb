class Post < ApplicationRecord
  belongs_to :user
  has_many :upvote_posts, :as => :likable_post
  has_many :downvote_posts, :as => :unlikable_post
  has_many :mark_innapropiateds, :as => :inappropriate

  validates :user_id, presence: true ,numericality: {only_integer: true}
  validates :title, :description, presence: true
  validates :title, length: {in: 2..50}
  validates :description, length:  {maximum: 2000}
end
