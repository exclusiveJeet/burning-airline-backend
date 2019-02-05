class FlightsController < ApplicationController

    def index
        @flights = Flight.all 

        respond_to do |format| 
            format.html
            format.json { render json:@flights}
        end
    end


end
