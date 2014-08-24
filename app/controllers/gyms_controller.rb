class GymsController < ApplicationController
  def index
    @gyms = Gym.asc(:name)
   
  end
  
  def show
    @gym = Gym.find(params[:id])
    @ratings = @gym.ratings
    @location =@gym.location
    @average_stars = @ratings.avg(:stars)
    
    @lap_pool = @ratings.sum(:lap_pool)
    @chillin_pool = @ratings.sum(:chillin_pool)
    @dumbbells_complete = @ratings.sum(:dumbbells_complete)
    @dumbbells_incomplete = @ratings.sum(:dumbbells_incomplete)

    @bench_press = @ratings.sum(:bench_press)
    @shoulder_press = @ratings.sum(:shoulder_press)
    @lats_back_machine = @ratings.sum(:lats_back_machine)
    @abs_machine = @ratings.sum(:abs_machine)
    @shoulder_machine = @ratings.sum(:shoulder_machine)


    @chest_machine = @ratings.sum(:chest_machine)
    @biceps_machine = @ratings.sum(:biceps_machine)
    @quads_machine = @ratings.sum(:quads_machine)
    @biceps_curl_bar = @ratings.sum(:biceps_curl_bar)
    @chin_up_bar = @ratings.sum(:chin_up_bar)

    @no_weights_at_all = @ratings.sum(:no_weights_at_all)
    @exercise_balls = @ratings.sum(:exercise_balls)
    @stretching_area = @ratings.sum(:stretching_area)
    @bosu = @ratings.sum(:bosu)
    @lockers = @ratings.sum(:lockers)

    @treadmill = @ratings.sum(:treadmill)
    @stairmaster = @ratings.sum(:stairmaster)
    @stepmill = @ratings.sum(:stepmill)
    @elliptical = @ratings.sum(:elliptical)
    @spin_bike = @ratings.sum(:spin_bike)



    @recumbent_bike = @ratings.sum(:recumbent_bike)
    @towels_available = @ratings.sum(:towels_available)
    @tvs_that_work = @ratings.sum(:tvs_that_work)
    @bottled_water = @ratings.sum(:bottled_water)
    @chilled_filtered_water = @ratings.sum(:chilled_filtered_water)
    @headphones_supplied = @ratings.sum(:headphones_supplied)
   





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
    elsif (!gym.coords)
        flash[:notice] = "Sorry.  We could not find that hotel!"
        redirect_to "/locations/#{gym.location_id}"
   else
       flash[:notice] = "We have that location covered!" 
      redirect_to "/gyms"
    end
  end
  
end