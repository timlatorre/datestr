class UsersController < ApplicationController

	def index
	end

	def new
	end

	def update
    if @auth.update_attributes(params[:user])
      redirect_to profile_path
    else
      render :edit
    end
	end

	def show
    if params[:id]
      @profile = User.find(params[:id])
    else
      @profile = @auth
    end
	end

	def edit
	end
end