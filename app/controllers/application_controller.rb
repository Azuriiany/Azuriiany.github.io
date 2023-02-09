class ApplicationController < ActionController::Base
  helper_method :current_user, :authenticate_user!
  def index
  end

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end 

  def authenticate_user!
    if current_user.nil?
      redirect_to posts_path, notice: "Please log in"
    end
  end 
end
