class Block < ApplicationRecord
  belongs_to :owner, :class_name => 'user'
  belongs_to :blocked, :class_name => 'user'
end
