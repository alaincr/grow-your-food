class LocationsController < ApplicationController

  def index
    if params[:city]
      @locations = Location.where(city: params[:city], urban: params[:urban], capacity: params[:capacity])
    else
      @locations = Location.where(urban: params[:urban], capacity: params[:capacity])
    end
    #critere date deuxieme temps
    #critere nbre de personne inf ou eg a nbre de place dispo deuxieme temps
  end

  def show
    @location = Location.find(params[:id])
    #@Booking = Booking.new
  end

  def new
  end

  def create
  end

end
