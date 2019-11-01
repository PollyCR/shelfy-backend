class Api::V1::RoutinesController < ApplicationController


    def index 
        routines = Routine.all 
        render json: routines
    end 

    def create 
        routine = Routine.find_or_create_by(routine_params)
        render json: routine.serializable_hash
    end 


    private

    def routine_params
        params.require(:routine).permit(:user_id, :routine_type)
    end 

end
