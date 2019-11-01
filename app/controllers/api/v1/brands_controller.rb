class Api::V1::BrandsController < ApplicationController
    def index 
        brands = Brand.all 
        render json: brands
    end 
end
