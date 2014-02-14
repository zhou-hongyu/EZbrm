# This is the main controller for our Locations of the startups
class LocationsController < ApplicationController
  before_action :get_user
  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.create!(params[:location])
    @location.get_info
    current_user.locations << @location
    if @location.save
      redirect_to current_user, :notice => "Successfully created location."
    else
      render :action => 'new'
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    @location.get_info
    if @location.update_attributes(params[:location])
      redirect_to current_user, :notice  => "Successfully updated location."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to user_path, :notice => "Successfully destroyed location."
  end

  private

  def get_user
    @user = User.find(params[:user_id]) if params.key?(:user_id)
  end

end
