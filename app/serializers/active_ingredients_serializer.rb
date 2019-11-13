class ActiveIngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :routine_product, :brand, :product_id
  belongs_to :product
  belongs_to :routine_product, through: :product
  belongs_to :brand, through: :product
end
