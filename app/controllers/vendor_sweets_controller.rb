class VendorSweetsController < ApplicationController

    def index 
        vs = VendorSweet.all
        render json: vs
    end 
    
    def show 
        vs = VendorSweet.find_by(id: params[:id])
        if vs
            render json: vs
        else 
            render json: {"error": "Vendor Sweet not found"}, status: 404
        end 
    end 

    def create
        vs = VendorSweet.create!(vs_params)
        if vs.valid?
            render json: vs
        else 
            render json: {"error": vs.errors.full_messages}, status: 422
        end 
    end 

    def destroy 
        vs = VendorSweet.find_by(id: params[:id])
        if vs
            vs.destroy
            head :no_content
        else 
            render json: {"error": "VendorSweet not found"}, status: 404
        end 
    end 

    private 

    def vs_params 
        params.permit(:price, :vendor_id, :sweet_id)
    end 
end
