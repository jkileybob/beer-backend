require 'byebug'

class Api::V1::BeersController < ApplicationController

  def index
    render json: @beers = Beer.all
  end

  def show
    # byebug
    render json: @beer = Beer.find_by(id: params[:id])
  end

end
