class SessionsController < ApplicationController
  def logout 
    session.delete(:user_id)
    redirect_to new_user_path
  end 

  def new
    # render :new
  end

  def create 
    user = User.find_by(user_name: params[:session][:user_name])
    user && user.authenticate(params[:session][:password]) 
    session[:user_id] = user.id
    redirect_to user_path(user)
  end 

  private 

  def session_params
    params.require(:session).permit(:user_name, :password)
  end 
end