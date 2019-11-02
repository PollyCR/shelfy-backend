class List < ApplicationRecord
    belongs_to :user
    has_many :list_products
    has_many :products, through: :list_products
  end
  