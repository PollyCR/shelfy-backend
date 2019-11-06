class Routine < ApplicationRecord
  include ActiveModel::Serialization
  belongs_to :user
  
  has_many :routine_products
  has_many :comments, through: :routine_products
  has_many :products, through: :routine_products
end
