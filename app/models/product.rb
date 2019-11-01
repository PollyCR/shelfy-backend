class Product < ApplicationRecord
  belongs_to :brand
  has_many :routine_products


end
