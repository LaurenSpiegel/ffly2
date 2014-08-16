class RatingsController < ApplicationController
  def create
    rating = Rating.new
    rating.stars = params[:rating][:stars]
    rating.comments = params[:rating][:comments]

    rating.lap_pool = params[:rating][:lap_pool]
    rating.chillin_pool = params[:rating][:chillin_pool]
    rating.dumbbells_complete = params[:rating][:dumbbells_complete]
    rating.dumbbells_incomplete = params[:rating][:dumbbells_incomplete]

    rating.bench_press = params[:rating][:bench_press]
    rating.shoulder_press = params[:rating][:shoulder_press]
    rating.lats_back_machine = params[:rating][:lats_back_machine]
    rating.abs_machine = params[:rating][:abs_machine]
    rating.shoulder_machine = params[:rating][:shoulder_machine]

    rating.chest_machine = params[:rating][:chest_machine]
    rating.biceps_machine = params[:rating][:biceps_machine]
    rating.quads_machine = params[:rating][:quads_machine]
    rating.biceps_curl_bar = params[:rating][:biceps_curl_bar]
    rating.chin_up_bar = params[:rating][:chin_up_bar]



    rating.no_weights_at_all = params[:rating][:no_weights_at_all]
    rating.exercise_balls = params[:rating][:exercise_balls]
    rating.stretching_area = params[:rating][:stretching_area]
    rating.bosu = params[:rating][:bosu]
    rating.lockers = params[:rating][:lockers]


    rating.treadmill = params[:rating][:treadmill]
    rating.stairmaster = params[:rating][:stairmaster]
    rating.stepmill = params[:rating][:stepmill]
    rating.elliptical = params[:rating][:elliptical]
    rating.spin_bike = params[:rating][:spin_bike]



    rating.recumbent_bike = params[:rating][:recumbent_bike]
    rating.towels_available = params[:rating][:towels_available]
    rating.tvs_that_work = params[:rating][:tvs_that_work]
    rating.bottled_water = params[:rating][:bottled_water]
    rating.chilled_filtered_water = params[:rating][:chilled_filtered_water]
    rating.headphones_supplied = params[:rating][:headphones_supplied]




    rating.gym_id = params[:rating][:gym_id]
    rating.image = params[:rating][:image]
    rating.user = @current_user
    rating.save!
    redirect_to "/gyms/#{rating.gym_id}"
  end
  
  def new
    @gym = Gym.find(params[:id])
  end

  
   
end