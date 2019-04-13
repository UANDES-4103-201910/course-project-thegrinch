class AchievementUser < ApplicationRecord
  belongs_to :achievement
  belongs_to :user

  validates :user_id, :achievement_id, presence: true, numericality: { only_integer: true }
end
