class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand_id, :product_type
  has_many :routine_products
end
