class RoutineProductSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :routine_id, :active_ingredients
  belongs_to :product
  has_many :comments
  has_many :active_ingredients, through: :products
end
