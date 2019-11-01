class Api::V1::TreatmentRoutinesController < ApplicationController

    def create 
        treatment_routine = TreatmentRoutine.find_or_create_by(treatment_routine_params)
        render json: treatment_routine
       end
        
        def index 
        treatment_routines = TreatmentRoutine.all 
        render json: treatment_routines
       end 
    
    
        def treatment_routine_params 
            params.require(:treatment_routine).permit(:user_id)
        end
end
