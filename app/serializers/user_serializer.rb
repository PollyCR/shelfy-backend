class UserSerializer < ActiveModel::Serializer
  attributes :id, :email_address, :display_name, :morning_products, :evening_products, :treatment_products
  has_many :products
end
