class BrowseController < ApplicationController
	def index
    @profiles = nil
  end

  def search
    browse = params[:browse]
    @profiles = User.where(nil)
    @profiles = @profiles.where(:age => browse[:age]) if browse[:age].present?
    @profiles = @profiles.where(:gender => browse[:gender]) if browse[:gender].present?
    @profiles = @profiles.where(:state => browse[:state]) if browse[:state].present?
    @profiles = @profiles.where(:ethnicity => browse[:ethnicity]) if browse[:ethnicity].present?
    render 'browse/index'
  end

end