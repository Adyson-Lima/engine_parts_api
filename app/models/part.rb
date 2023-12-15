class Part < ApplicationRecord
  validates :name, :function, presence: true
end
