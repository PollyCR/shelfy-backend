class ApplicationController < ActionController::API
    before_action :set_current_user
    before_action :set_cors_header

    def set_cors_header
        response.set_header('Access-Control-Allow-Origin', 'true')
    end

    def encode_token(payload)
        JWT.encode(payload, ENV['RAILS_SECRET'])
    end

    def decode_token(token)
    # byebug
        JWT.decode(token, ENV['RAILS_SECRET'])[0]
    end

    def get_token
        request.headers["Authorization"] || request.headers["Authorisation"]
    end

    def set_current_user
        token = get_token
        if token && token != "null"
            decoded_token = decode_token(token)
            @current_user = User.find(decoded_token["user_id"])
        else
            @current_user = nil
        end
    end

    def logged_in
        !!@current_user
    end
end