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
	end

	def edit
	end
end