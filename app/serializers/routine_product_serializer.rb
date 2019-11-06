class RoutineProductSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :routine_id
  belongs_to :product
  has_many :comments
end
