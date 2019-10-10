require 'byebug'

class Api::V1::BeersController < ApplicationController

  before_action :find_user, only: [:index_user_beers]
  before_action :find_user_and_brewery, only: [:create_beer, :update]


  def show
    # byebug
    render json: @beers = Beer.all
    # render json: @beer = Beer.find_by(id: params[:id])
  end

  def index_user_beers
    @beers = @user.beers
    render json:  @beers.all
  end

  def create_beer
    # raise params.inspect
    @beer = Beer.create(
      user_id: @user.id,
      brewery_id: @brewery.id,
      name: params["name"],
      style: params["style"],
      abv: params["abv"],
      tasting_note: params["tasting_note"],
      rating: params["rating"],
      comment: params["comment"]
      )
    BrewBeer.create({
      beer_id: @beer.id,
      brewery_id: @brewery.id
    })
    UserBeer.create({
      user_id: @user.id,
      beer_id: @beer.id
    })

    render json: {
      brewery: @brewery,
      beer: @beer
    }
  end

  def edit
    @beer = Beer.find_by(id: params[:id])
  end

  def update
    @beer = Beer.find_by(id: params[:id])
    byebug
    @beer.update(
      name: params["name"],
      style: params["style"],
      abv: params["abv"],
      tasting_note: params["tasting_note"],
      rating: params["rating"],
      comment: params["comment"]
    )
    render json: {
      brewery: @brewery,
      beer: @beer
    }
  end

  private

  def beer_params
    params.require(:beer).permit(:user_id, :brewery_id, :name, :style, :abv, :tasting_note, :rating, :comment)
  end

  def find_user
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload[0]["id"])
    # byebug
  end

  def find_user_and_brewery
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload[0]["id"])
    @brewery = Brewery.find_by(id: params["brewery_id"])
    # byebug
  end

end
