class LocationsController < ApplicationController
  def index
    @locations = Location.asc(:name)
  end
  
  def show
    @location = Location.find(params[:id])
    @gyms = @location.gyms.asc(:name)
  end
end