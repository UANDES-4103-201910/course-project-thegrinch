class DownvoteComment < ApplicationRecord
  belongs_to :user
  belongs_to :comment
  validates_uniqueness_of :user_id, :scope => [:unlikable_comment_id, :unlikable_comment_type]
end
