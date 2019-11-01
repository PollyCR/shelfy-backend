class Api::V1::BrandsController < ApplicationController
    def index 
        brands = Brand.all 
        render json: brands
    end 

    def show 
        brand = Brand.find(brand_params[:id])
        render json: brand 
    end 

    private 
    def brand_params 
        params.permit(:id, :name)
    end
end
