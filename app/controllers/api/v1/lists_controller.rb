class Api::V1::ListsController < ApplicationController
    def index 
        lists = List.all 
        render json: lists
    end 

    def create 
        list = List.find_or_create_by(list_params)
        render json: list.serializable_hash
    end 


    private

    def list_params
        params.require(:list).permit(:user_id, :id)
    end 

end
