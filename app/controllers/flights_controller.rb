class FlightsController < ApplicationController

    def index
    
        @flights = Flight.all.order(:created_at)

        respond_to do |format| 
            format.html
            format.json { render json:@flights}
        end
    end

    def new
        render :new_flight
    end

    def create
        date = Date.parse(params[:date]).strftime("%d/%m/%Y")
        @flight = Flight.create(:f_no => params[:fnum], :date => date, :origin => params[:origin], :destination => params[:desto])
        redirect_to '/flights'
    end


    private
    def flight_params
        params.require(:flight).permit(:f_no, :date, :origin, :destination)
    end
end
