class RatingsController < ApplicationController
  def create
    rating = Rating.new
    rating.stars = params[:rating][:stars]
    rating.comments = params[:rating][:comments]
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