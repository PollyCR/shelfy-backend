class Api::V1::ActiveIngredientsController < ApplicationController

    def index 
        render json: ActiveIngredient.all 
    end 
end
