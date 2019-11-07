class Api::V1::ListProductsController < ApplicationController
    def create 
        # byebug
        brand = Brand.find_or_create_by(name: params[:brand])
        product = Product.find_or_create_by(name: params[:product_name], brand_id: brand.id, product_type: params[:product_type])
        list = List.find_or_create_by(user_id: params[:id])
        list_product = ListProduct.find_or_create_by(product_id: product.id, list_id: list.id)
        # byebug
        render json: list_product
    end 

    def index 
        list_products = ListProduct.find_by(list_id: params[:list_id])
        render json: list_products
    end 

    def destroy 
        # byebug
        list_product = ListProduct.find_by(product_id: params[:id])
        # byebug
        list_product.destroy
# listProduct.destroy(params[:id])
    end 
end
