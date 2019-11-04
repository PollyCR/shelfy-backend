class RoutineProduct < ApplicationRecord
  belongs_to :product
  belongs_to :routine
  has_many :comments
end
