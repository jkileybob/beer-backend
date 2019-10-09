require 'byebug'

class Api::V1::BeersController < ApplicationController

  before_action :find_user, only: [:index_user_beers]

  def index_user_beers
    @beers = @user.beers
    # byebug
    render json:  @beers.all
  end

  def show
    # byebug
    render json: @beer = Beer.find_by(id: params[:id])
  end

  private

  def find_user
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload[0]["id"])
    # byebug
  end

end
