class Tag < ApplicationRecord
  belongs_to :tagger, class_name: 'user'
  belongs_to :tagged, class_name: 'user'
  belongs_to :comment

  validates :tagged_id, :tagger_id, presence: true ,numericality: {only_integer: true}
end
