require 'byebug'

class Api::V1::BeersController < ApplicationController

  before_action :find_beer, only: [:show_beer, :update, :destroy]
  before_action :find_user, only: [:index_user_beers]
  before_action :find_user_and_brewery, only: [:create_beer, :update]

  def index_user_beers
    @beers = @user.beers
    render json: @beers.each do |beer| {
      id: beer.id,
      brewery_id: @brewery.id,
      name: beer.name,
      style: beer.style,
      abv: beer.abv,
      tasting_note: beer.tasting_note,
      rating: beer.rating,
      comment: beer.comment
    }
    end
  end

  def show_beer
    render json: @beer
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
      beer: {
        id: @beer.id,
        brewery_id: @brewery.id,
        name: @beer.name,
        style: @beer.style,
        abv: @beer.abv,
        tasting_note: @beer.tasting_note,
        rating: @beer.rating,
        comment: @beer.comment
      }
    }
  end

  def update
    if @beer.update(
        name: params["name"],
        style: params["style"],
        abv: params["abv"],
        tasting_note: params["tasting_note"],
        rating: params["rating"],
        comment: params["comment"]
      )
      render json: {
        beer: {
          id: @beer.id,
          brewery_id: @brewery.id,
          name: @beer.name,
          style: @beer.style,
          abv: @beer.abv,
          tasting_note: @beer.tasting_note,
          rating: @beer.rating,
          comment: @beer.comment
        }
      }
    else
      render js: "alert('Oops! Beer did not seem to update.')"
    end

  end

  def destroy
    @beer.destroy
  end


  private

  def beer_params
    params.require(:beer).permit(:user_id, :brewery_id, :name, :style, :abv, :tasting_note, :rating, :comment)
  end

  def find_beer
    @beer = Beer.find_by(id: params[:id])
  end

  def find_user
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload[0]["id"])
  end

  def find_user_and_brewery
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload[0]["id"])
    @brewery = Brewery.find_by(id: params["brewery_id"])
  end

end
