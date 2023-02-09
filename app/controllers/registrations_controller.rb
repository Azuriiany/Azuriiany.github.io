class RegistrationsController < ApplicationController
  def sign_up
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid? && @user.save
      if @user.authenticate(params.require(:user)[:password])
        session[:user_id] = @user.id
        redirect_to welcome_path, notice: "Account created succesfully"
      end
    else
      flash[:notice] = "Invalid email or password"
      render :sign_up
    end
  end

  def welcome
    @user = User.last
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end