class StartupsController < ApplicationController
  def index
    @startups = Startup.all
  end

  def new
    @startup = Startup.new
  end

  def create
    @startup = Startup.create(startup_params)
    @startup.save!
    redirect_to startups_path
  end

  def show
    @startup = Startup.find(params[:id])
  end

  def edit
  end

  def update
  end

  private

  def startup_params
    params.require(:startup).permit(:name)
  end
end
