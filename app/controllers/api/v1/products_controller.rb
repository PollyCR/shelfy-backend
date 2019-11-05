class Api::V1::ProductsController < ApplicationController

    def create 
  
        brand = Brand.find_or_create_by(params[:brand_name])
        product = Product.create(params)
        render json: product 
    end 

    def index 
        products = Product.all 
        render json: products 
    end 
    

end
