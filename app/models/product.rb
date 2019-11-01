class Product < ApplicationRecord
  belongs_to :brand
  has_many :routine_products
  has_many :evening_routine_products

end
