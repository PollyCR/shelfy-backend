class UserSerializer < ActiveModel::Serializer
  attributes :id, :email_address, :display_name, :routine_products
  has_many :products
  has_many :routines
  has_many :routine_products, through: :routines
end
