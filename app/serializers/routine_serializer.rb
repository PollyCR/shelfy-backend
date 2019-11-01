class RoutineSerializer < ActiveModel::Serializer
  attributes :id, :routine_type, :user_id
  has_many :routine_products
  has_many :products, through: :routine_products
  belongs_to :user
end
