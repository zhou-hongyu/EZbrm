class CompetitionsController < ApplicationController
  def update
  	competition = Competition.find(params[:id])
  	competition.update_attributes(competition: competition_params[:description])
  	redirect_to :back
  end

  def create
  	Competition.create!(competition_params)
  	redirect_to :back
  end

  def destroy
  	Competition.find(params[:id]).destroy!
  	redirect_to :back

  end

  private

  def competition_params
  	params.require(competition).permit(:startup_id, :store_id, :description)
  end
end
