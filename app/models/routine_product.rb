class RoutineProduct < ApplicationRecord
  belongs_to :product
  belongs_to :routine
  has_many :active_ingredients, through: :product
end
