class Report < ApplicationRecord
  belongs_to :damage
  has_many :comments
end
