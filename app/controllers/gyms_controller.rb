class GymsController < ApplicationController
  def index
    @gyms = Gym.asc(:name)
   
  end
  
  def show
    @gym = Gym.find(params[:id])
    @ratings = @gym.ratings
    @location =@gym.location
    @average_stars = @ratings.avg(:stars)
    
    if @average_stars
      @average_stars.round(2)
    end
  end
  

   def create
    gym = Gym.new
    gym.name = params[:gym][:name]
    gym.location_id = params[:gym][:location_id]
    #gym.street_address = params[:gym][:street_address] considered using this to further specify coordinates but results in geocoder failing.
    gym.coords = Geocoder.coordinates("#{gym.name}")
    #gym.save!
     if gym.save
      redirect_to "/locations/#{gym.location_id}"
   else
       flash[:notice] = "We have that location covered!" 
      redirect_to "/gyms"
    end
  end
  
end