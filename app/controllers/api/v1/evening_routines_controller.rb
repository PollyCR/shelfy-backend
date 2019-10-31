class Api::V1::EveningRoutinesController < ApplicationController
    def create 
        evening_routine = EveningRoutine.find_or_create_by(evening_routine_params)
        render json: evening_routine
    end
        
    def index 
        evening_routines = EveningRoutine.all 
        render json: evening_routines
    end 
    
    
    def evening_routine_params 
        params.require(:evening_routine).permit(:user_id)
    end
end
