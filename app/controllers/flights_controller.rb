class FlightsController < ApplicationController

    def index
        @flights = Flight.all

        respond_to do |format|
            format.html
            format.json { render json:@flights}
        end
    end

    def show
      @flight = Flight.find(params[:id])

      respond_to do |format|
        format.html
        format.json { render json:@flight}
      end
    end

end
