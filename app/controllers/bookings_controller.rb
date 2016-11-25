class BookingsController < ApplicationController

  def create
    @location = Location.find(params[:location_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.location = @location
    @booking.address = @location.address

    # @booking = Booking.new(
    #   user_id: current_user.id;
    #   location_id: @location.id;
    #   address: @location.address;
    #   date_beginning: params[:date_beginning];
    #   date_end: params[:date_end])
    if @booking.save
      flash[:notice] = "Votre réservation a bien été prise en compte"
      redirect_to root_path
    else
      render "locations/show"
    end
  end

  def show
  end

  private

    def booking_params
      params.require(:booking).permit(:date_beginning, :date_end)
    end

end
