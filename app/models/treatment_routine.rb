class TreatmentRoutine < ApplicationRecord
  belongs_to :user
  has_many :treatment_routine_products
  has_many :products, through: :treatment_routine_products
end
