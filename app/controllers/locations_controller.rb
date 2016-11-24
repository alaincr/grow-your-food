class LocationsController < ApplicationController

  def index
    # if !params[:city].blank?
    #   @locations = Location.where(city: params[:city], urban: params[:urban], capacity: params[:capacity].to_i)
    # else
    #   @locations = Location.where(urban: params[:urban], capacity: params[:capacity].to_i)
    # end
    @locations = Location.all
    @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
    end
  end
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat

  def show
    @location = Location.find(params[:id])
    @hash = [{ lat: @location.latitude, lng: @location.longitude }]
    @booking = Booking.new(location_id: @location.id)
  end
    #@Booking = Booking.new

  def new
  end

  def create
  end

end
