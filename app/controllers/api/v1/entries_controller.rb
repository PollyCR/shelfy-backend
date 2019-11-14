class Api::V1::EntriesController < ApplicationController
    def create 
        # byebug
       diary = Diary.find_or_create_by(user_id: params[:user])
       entry = Entry.create({diary_id: diary.id, content: params[:entry], skin_score: params[:skin_score], routine_type: params[:routine]})
        render json: entry
    end 

    def index 
        entries = Entry.all
        render json: entries
    end 

    def destroy 
        # byebug
        entry = Entry.find_by(id: params[:id])
        # byebug
        entry.destroy 
# RoutineProduct.destroy(params[:id])
    end 

end
