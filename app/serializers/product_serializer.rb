class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand_id, :product_type, :active_ingredients
  has_many :routine_products
  has_many :active_ingredients
end
