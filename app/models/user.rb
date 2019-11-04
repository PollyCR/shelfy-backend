class User < ApplicationRecord
    has_secure_password
    validates :email_address, uniqueness: { case_sensitive: false }
    validates :password, :length => {:within => 8..40}
    has_many :routines 
    has_many :routine_products, through: :routines 
    has_many :products, through: :routine_products
    has_many :diaries 
    has_many :entries, through: :diaries 
    has_many :comments, through: :routines

    def morning_products
       routine_products ? routine_products.select{|rp| rp.routine.type == "AM"}.map{|rp| rp.product} : null
    end
    def evening_products
        routine_products ? routine_products.select{|rp| rp.routine.type == "PM"}.map{|rp| rp.product} :  null
    end
    def treatment_products
        routine_products ? routine_products.select{|rp| rp.routine.type == "treat"}.map{|rp| rp.product} : null
    end
end
