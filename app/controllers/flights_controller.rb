class FlightsController < ApplicationController

    def index
        @flights = Flight.all

        respond_to do |format|
            format.html
            format.json { render json:@flights}
        end
    end

    def show
      flight = Flight.find(params[:id])
      plane = flight.plane
      flight_data = { :flight => flight, :plane => plane }

      respond_to do |format|
        format.html
        format.json { render json:flight_data}
      end
    end

end
