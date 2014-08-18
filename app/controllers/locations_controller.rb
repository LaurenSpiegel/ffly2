class LocationsController < ApplicationController
  def index
    @locations = Location.asc(:name)
  end
  
  def show
    @location = Location.find(params[:id])
    @gyms = @location.gyms.asc(:name)
  end

  def create
    location = Location.new
    location.name = params[:location][:name]
    location.zip = params[:location][:zip]
    location.save
    redirect_to "/"
  end

end

