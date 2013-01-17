class RegisterController < ApplicationController

  def new
  end

  def create
    @user = User.new(params[:register])
    if @user.save
      session[:user_id] = @user.id
      @auth = @user.id
      redirect_to profile_new_path
    else
      redirect_to register_path
    end
  end

end