class PhotosController < ApplicationController
  before_filter :ensure_logged_in
  def index
  end

  def new
    @photo = Photo.new
  end

  def create
    @auth.photos << Photo.create(params[:photo])
    redirect_to photos_path
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def primary
  end

  private
  def ensure_logged_in
    redirect_to root_path if @auth.nil?
  end

end