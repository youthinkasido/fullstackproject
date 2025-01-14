class Api::SessionsController < ApplicationController
  # before_action :require_logged_in

  def create 
    @user = User.find_by_credentials(
      params["user"]["email"], 
      params["user"]["password"]
      )
    if @user
      login(@user) 
      render 'api/users/show' # sends users show json 
    else
      render json: ["Invalid Credentials"], status: 401
      
    end
  end

  def destroy
    @user = current_user
    if @user
      logout
      render json: {} 
    else
      render status: 404
    end
  end


end