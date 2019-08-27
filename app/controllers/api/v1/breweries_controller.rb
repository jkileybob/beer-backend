class Api::V1::BreweriesController < ApplicationController

  def index
    render json: @breweries = Brewery.all
  end

  def show
    render json: @brewery = Brewery.find_by(id: params[:id])
  end

  def create
    @brewery = Brewery.create({
        id: params[:id],
        name: params[:name],
        brewery_type: params[:brewery_type],
        street: params[:street],
        city: params[:city],
        state: params[:state],
        postal_code: params[:postal_code],
        country: params[:country],
        longitude: params[:longitude],
        latitude: params[:latitude],
        phone: params[:phone],
        website_url: params[:website_url],
      })
  end

end
