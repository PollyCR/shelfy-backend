class ActiveIngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :routine_product
  belongs_to :product
  belongs_to :routine_product, through: :product
end
