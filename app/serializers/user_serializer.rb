class UserSerializer < ActiveModel::Serializer
  attributes :id, :email_address, :display_name, :routine_products, :morning_products, :evening_products, :treatment_products
  has_many :routines 
  has_many :routine_products, through: :routines 
  has_many :products, through: :routine_products
  has_many :diaries 
  has_many :entries, through: :diaries 
  has_many :lists
  has_many :list_products, through: :lists
  # has_many :comments, through: :routines

  
end
