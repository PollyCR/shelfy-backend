class Brand < ApplicationRecord
    has_many :products
    has_many :active_ingredients, through: :products
end
