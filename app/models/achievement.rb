class Achievement < ApplicationRecord
  has_many :achievement_users, dependent: :destroy
  validates :title, :description, presence: true
  validates :title, length: { maximum: 20}
  validates :description, length: {maximum: 50}
end
