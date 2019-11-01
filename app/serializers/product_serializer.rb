class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand_id, :active_ingredients
end
