class Api::V1::RoutineProductsController < ApplicationController

    def create 
        # byebug
        brand = Brand.find_or_create_by(name: params[:brand])
        product = Product.find_or_create_by(name: params[:product_name], brand_id: brand.id, product_type: params[:product_type])
        active_ingredients = params[:active_ingredients].split(",").map{|ingredient|ActiveIngredient.find_or_create_by(product_id: product.id, name: ingredient).id}
        routine = Routine.find_or_create_by(routine_type: params[:routine], user_id: params[:id])
        routine_product = RoutineProduct.find_or_create_by(product_id: product.id, routine_id: routine.id)
        render json: routine_product
    end 

    def index 
        routine_products = RoutineProduct.find_by(routine_id: params[:routine_id])
        render json: routine_products
    end 

    def destroy 
        routine_product = RoutineProduct.find_by(params[:id])
        routine_product.destroy 
    end 



end
