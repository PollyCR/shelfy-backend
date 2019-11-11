class ActiveIngredientSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :product
  belongs_to :routine_product, through: :product
end
