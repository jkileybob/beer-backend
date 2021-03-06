class Api::V1::BreweriesController < ApplicationController

  before_action :find_brewery, only: [:show, :destroy]

  def index
    render json: @breweries = Brewery.all
  end

  def show
    render json: @brewery
  end

  private

  def find_brewery
    @brewery = Brewery.find_by(id: params[:id])
  end

end
