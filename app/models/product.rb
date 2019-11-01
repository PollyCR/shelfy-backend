class Product < ApplicationRecord
  belongs_to :brand
  has_many :morning_routine_products
  has_many :evening_routine_products
  has_many :treatment_routine_products
end
