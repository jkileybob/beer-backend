class Api::V1::BreweriesController < ApplicationController

  def index
    render json: @breweries = Brewery.all
  end

  def show
    render json: @brewery = Brewery.find_by(id: params[:id])
  end

  def create
    @brewery = Brewery.create({
        id: params[:id]
      })
  end

end
