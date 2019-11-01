class User < ApplicationRecord
    has_secure_password
    validates :email_address, uniqueness: { case_sensitive: false }
    validates :password, :length => {:within => 8..40}
    has_many :routines 
    has_many :routine_products, through: :routines 
    has_many :products, through: :routine_products

    def morning_products
        routine_products.select{|rp| rp.routine.type == "AM"}.map{|rp| rp.product}
    end
    def evening_products
        routine_products.select{|rp| rp.routine.type == "PM"}.map{|rp| rp.product}
    end
    def treatment_products
        routine_products.select{|rp| rp.routine.type == "treat"}.map{|rp| rp.product}
    end
end
