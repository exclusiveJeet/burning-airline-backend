class PlanesController < ApplicationController
    before_action :set_plane, only: [:show, :edit, :update, :destroy]

    def index
        @planes = Plane.all 

        respond_to do |format| 
            format.html
            format.json { render json:@planes}
        end
    end

    def new
        render :new_plane
    end

    def create 
    
        @plane = Plane.create(:name => params[:name], :row => params[:row], :col => params[:col])
        @planes = Plane.all
        redirect_to '/planes'
    end


    private
    def plane_params
        params.require(:plane).permit(:name, :row, :col)
    end

end
