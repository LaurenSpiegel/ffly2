class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
 #before_filter :increment_pageviews

  helper_method :current_user
  
  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  # def increment_pageviews
  #   if session [:pageviews] == nil
  #     session[:pageviews] = 0
  #   end
  #   session[:pageviews] = session[:pageviews] + 1
  #   @pageviews = session[:pageviews]
  # end

end
