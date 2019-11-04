class ListSerializer < ActiveModel::Serializer
  attributes :id, :user_id
  has_many :list_products
end
