class Api::V1::MorningRoutinesController < ApplicationController

   def create 
    morning_routine = MorningRoutine.find_or_create_by(morning_routine_params)
    render json: morning_routine
   end
    
    def index 
    morning_routines = MorningRoutine.all 
    render json: morning_routines
   end 


    def morning_routine_params 
        params.require(:morning_routine).permit(:user_id)
    end
end
