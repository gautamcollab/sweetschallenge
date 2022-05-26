class SweetsController < ApplicationController

    def index
        sweets = Sweet.all 
        render json: sweets
    end 

    def show 
        sweets = Sweet.find_by(id: params[:id])
        if sweets
            render json: sweets
        else 
            render json: {"error": "Sweet not found"}, status: 404 
        end 
    end 
end
