class PagesController < ApplicationController
  def home
  #  @location = Location.new
  @locations = Location.all.sample(6)
  end
end
