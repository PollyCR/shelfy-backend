class Api::V1::MorningRoutineProductsController < ApplicationController
    def index 
        morning_routine_products = MorningRoutineProduct.all 
        render json: morning_routine_products 
    end 

    def create 
        morning_routine_product = MorningRoutineProductSerializer.new(morning_routine_product_params)
        # product = Product.find_or_create_by(morning_routine_product_params[:product_id])
        render json: morning_routine_product 
    end 

    def find
        morning_routine_products = MorningRoutineProduct.find_by(morning_routine_product_params[:index])
    end 
    
    private 
    def morning_routine_product_params
        params.require(:morning_routine_product).permit(:morning_routine_id, :product_id)
    end 

end
