class Api::V1::DiariesController < ApplicationController
    def create 
        diary = Diary.find_or_create_by(diary_params)
        render json: diary 
    end 

    def index 
        diaries = Diary.all 
        render json: diaries 
    end  

    private 
    def diary_params 
        params.require(:diary).permit(:id, :user_id)
    end 
end
