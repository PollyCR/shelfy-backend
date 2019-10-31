class User < ApplicationRecord
    has_secure_password
    validates :email_address, uniqueness: { case_sensitive: false }
    validates :password, :length => {:within => 8..40}
    has_many :morning_routine_products, through: :morning_routine 
    has_many :products, through: :morning_routine_products
    has_many :evening_routine_products, through: :evening_routine 
    has_many :products, through: :evening_routine_products
    has_many :treatment_routine_products, through: :treatment_routine 
    has_many :products, through: :treatment_routine_products
end
