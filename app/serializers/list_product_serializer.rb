class ListProductSerializer < ActiveModel::Serializer
  attributes :id, :list_id, :product_id, :purchased
end
