class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :comment
  has_many :upvote_comments, :as => :likeable_comment
  has_many :downvote_comments, :as => :unlikeable_comment
end
