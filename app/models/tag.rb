class Tag < ApplicationRecord
  belongs_to :tagger, class_name: 'user'
  belongs_to :tagged, class_name: 'user'
  belongs_to :comment
end
