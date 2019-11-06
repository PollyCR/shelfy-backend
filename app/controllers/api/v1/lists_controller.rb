class Api::V1::ListsController < ApplicationController
    def index 
        lists = List.all 
        render json: lists
    end 

    def create 
        # byebug
        list = List.find_or_create_by(user_id: params)
        render json: list
    end 



end
