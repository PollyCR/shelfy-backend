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
    has_many :lists
    has_many :list_products, through: :lists


    def morning_products
       routine_products ? routine_products.select{|rp| rp.routine.routine_type == "am"}.map{|rp| rp.product} : null
    end
    def evening_products
        routine_products ? routine_products.select{|rp| rp.routine.routine_type == "pm"}.map{|rp| rp.product} :  null
    end
    def treatment_products
        routine_products ? routine_products.select{|rp| rp.routine.routine_type == "treatment"}.map{|rp| rp.product} : null
    end

end
