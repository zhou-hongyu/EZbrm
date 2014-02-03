class CooperationsController < ApplicationController
  def update
  	cooperation = Cooperation.find(params[:id])
  	cooperation.update_attributes(description: cooperation_params[:description])
  	redirect_to :back
  end

  def create
  	Cooperation.create!(cooperation_params)
  	redirect_to :back
  end

  def destroy
  	Cooperation.find(params[:id]).destroy!
  	redirect_to :back
  end

  private

  def cooperation_params

  	params.require(:cooperation).permit(:startup_id, :store_id, :description)

  end
end
