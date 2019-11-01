class Api::V1::EveningRoutineProductsController < ApplicationController

    def index 
        evening_routine_products = EveningRoutineProduct.all 
        render json: evening_routine_products 
    end 
    def create 
        evening_routine_product = EveningRoutineProduct.create(evening_routine_product_params)
        render json: evening_routine_product 
    end 

    def find
        evening_routine_products = EveningRoutineProduct.find_by(evening_routine_product_params[:index])
    end 
    
    private 
    def evening_routine_product_params
        params.require(:evening_routine_product).permit(:evening_routine_id, :product_id)
    end 

end
