class VendorsController < ApplicationController

    def index
        vendors = Vendor.all 
        render json: vendors
    end 

    def show 
        vendors = Vendor.find_by(id: params[:id])
        if vendors 
            render json: vendors
        else 
            render json: {"error": "Vendor not found"}, status: 404
        end 
    end 


end
