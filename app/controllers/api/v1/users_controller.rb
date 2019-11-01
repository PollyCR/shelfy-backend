
class Api::V1::UsersController < ApplicationController

    def create
        user = User.create(user_params)
        if user.valid?
            render json: { token: encode_token({user_id: user.id}), user: UserSerializer.new(user) }
        else
            render json: { errors: user.errors.full_messages }, status: :not_acceptable
        end
    end

    def show 
        user = User.find(params[:id])
        render json: user
    end 

    def index 
        render json: User.all
    end 

    private

    def user_params
        params.require(:user).permit(:id, :display_name, :email_address, :password)
    end

end
