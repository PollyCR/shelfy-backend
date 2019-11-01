class Api::V1::ProductsController < ApplicationController

    def create 
        product = Product.new(product_params)
        render json: product 
    end 

    def index 
        products = Product.all 
        render json: products 
    end 
    

end
