class PlanesController < ApplicationController
    def index
        @planes = Plane.all 

        respond_to do |format| 
            format.html
            format.json { render json:@planes}
        end
    end

end
