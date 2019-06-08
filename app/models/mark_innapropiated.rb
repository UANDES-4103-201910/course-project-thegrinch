class MarkInnapropiated < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :user_id, :post_id, presence: true ,numericality: {only_integer: true}
  validates_uniqueness_of :user_id, scope: :post
end
