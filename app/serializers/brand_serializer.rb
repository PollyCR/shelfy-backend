class BrandSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :products
  has_many :active_ingredients, through: :products
end
