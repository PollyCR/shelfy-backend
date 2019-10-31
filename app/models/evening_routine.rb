class EveningRoutine < ApplicationRecord
  belongs_to :user
  has_many :evening_routine_products 
  has_many :products, through: :evening_routine_products
end
