
class Api::V1::AuthenticationController < ApplicationController

    def create
        user = User.find_by(email_address: login_params[:email_address])
        if user && user.authenticate(login_params[:password])
            render json: { token: encode_token({user_id: user.id}), user: UserSerializer.new(user) }
        else
            render json: { error: ["login credentials not valid"] }, status: :not_found
        end
    end

    def validate
        if @current_user
            render json: { token: encode_token({user_id: @current_user.id}), user: UserSerializer.new(@current_user)}
        else
            render json: { errors: ["user not found"] }, status: :not_found
        end
    end

    private

    def login_params
        params.require(:user).permit(:email_address, :password)
    end
end