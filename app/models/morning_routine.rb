class MorningRoutine < ApplicationRecord
  belongs_to :user
  has_many :morning_routine_products
  has_many :products, through: :morning_routine_products
end
