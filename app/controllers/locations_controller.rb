class LocationsController < ApplicationController

  def index
    if !params[:city].blank?
      @locations = Location.where(city: params[:city], urban: params[:urban], capacity: params[:capacity].to_i)
    else
      @locations = Location.where(urban: params[:urban], capacity: params[:capacity].to_i)
    end
    #critere date deuxieme temps
    #critere nbre de personne inf ou eg a nbre de place dispo deuxieme temps
    @hash = Gmaps4rails.build_markers(@locations) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
    end
  end

  def show
    @location = Location.find(params[:id])
    @hash = [{"lat": @location.latitude, "long": @location.longitude}]
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    #@Booking = Booking.new
  end

  def new
  end

  def create
  end

end
