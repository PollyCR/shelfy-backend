
class Api::V1::UsersController < ApplicationController

    def create
        user = User.create(user_params)
        if user.valid?
            render json: { token: encode_token({user_id: user.id}), user: UserSerializer.new(user) }
        else
            render json: { errors: user.errors.full_messages }, status: :not_acceptable
        end
    end

    def index 
        users = User.all 
        render json: users
    end 
    private

    def user_params
        params.require(:user).permit(:display_name, :email_address, :password)
    end

end
