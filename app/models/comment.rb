class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :comment
  has_many :upvote_comments, :as => :likeable_comment
  has_many :downvote_comments, :as => :unlikeable_comment

  validates :post_id, :user_id, :content, presence: true
  validates :post_id, :user_id, numericality: {only_integer: true}
  validates :content, length: {maximum: 1000}
end
