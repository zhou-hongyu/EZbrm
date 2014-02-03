class StoresController < ApplicationController
  def index
  	@stores = Store.all
  end

  def new
  	@store = Store.new
  end

  def create
  	@store = Store.create!(store_params)
  end

  def show
  end

  private 

  def store_params
  	params.require(:sotre).require(:name)
  end
end
