class Api::V1::ListProductsController < ApplicationController
    def create 
        # byebug
        list = List.find_or_create_by(user_id: params[:user_id])
        list_product = ListProduct.find_or_create_by(list_id: list.id, product_id: params[:product_id], purchased: false)
        # # byebug
        render json: list_product
    end 

    def index 
        list_products = Product.find_by(id: params[:product_id])
        render json: list_products
    end 

    def destroy 
        # byebug
        list_product = ListProduct.find(params[:id])
        # byebug
        list_product.destroy
# listProduct.destroy(params[:id])
    end 
end
