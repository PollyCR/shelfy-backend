class ListSerializer < ActiveModel::Serializer
  attributes :id, :user_id
  belongs_to :user
  has_many :list_products
end
