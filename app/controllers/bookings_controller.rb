class BookingsController < ApplicationController
  def new
  	@flight = Flight.find_by(id: params[:flight_id])
  	@passengers = params[:passengers]
 	  @booking = @flight.bookings.build

 	  params[:passengers].to_i.times { @booking.passengers.build }
  end

  def create
  	@booking = Booking.new(booking_params)
  	if @booking.save
  	  flash[:success] = "Your flight was successfully booked!"
  	  redirect_to @booking
  	else 
  	  render 'new'
  	end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
    def booking_params
      params.require(:booking).permit(:flight_id,
      								  :passengers_attributes => [:name, :email])
    end
end
