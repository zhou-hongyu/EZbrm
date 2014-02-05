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
    client = Yelp::Client.new
    category = @location.category
    latitude = @location.latitude
    longitude = @location.longitude

    request = Yelp::V2::Search::Request::GeoPoint.new(
             :term => category,
             :latitude => latitude,
             :longitude => longitude)
    response = client.search(request)
    @stores = response["businesses"]

    @stores.each do |store|

      @competitor = Competitor.new
      @competitor.name = store["name"]
      @competitor.review_count = store["review_count"]
      @competitor.url = store["url"]
      @competitor.image_url = store["image_url"]
      @competitor.category = store["categories"][0][0]
      @competitor.save!
      @location.competitors << @competitor
    end
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
