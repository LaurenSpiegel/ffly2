class UsersController < ApplicationController
  def new
  end
  
  def create
    user = User.new
    user.email = params[:user][:email]
    user.password = params[:user][:password]
    user.password_confirmation = params[:user][:password_confirmation]
    user.save!
    session[:user_id] = user.id.to_s
    redirect_to '/'
  end
  
end