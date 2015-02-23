class UsersController < ApplicationController
 
  def show
    @user = User.find(params[:id])
  end
 
  def new
    @user = User.new
  end
  # checking for a successful save
  def create 
    @user = User.new(user_params)
    if @user.save
      log_in @user
      #flash success message
      flash[:success] = 'Welcome to Sound Manager App!'
      redirect_to @user
    else
      render 'new'
    end
  end
  
  private
  #auxiliary method
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end 
end
