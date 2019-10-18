require 'byebug'

class Api::V1::FavoritesController < ApplicationController

  before_action :check_for_brewery, only: [:create]
  before_action :find_user, only: [:index_user_favs, :create, :destroy]

  # def index_user_favs
  #   @favorites = @user.favorites
  #   render json: {
  #     user_favorites: {
  #       fav_id: @favorites.map { |fav| fav.id },
  #       brewery_id: @favorites.map { |fav| fav.brewery_id }
  #     }
  #   }
  # end

  # def show
  #   render json:  @favorites = Favorite.all
  # end
  #

  def show
    @favorite = Favorite.find_by(id: params[:id])
    render json: @favorite
  end

  def create
    @favorite = Favorite.create({
      user_id: @user.id,
      brewery_id: @brewery.id
    })
    render json: {
      brewery: @brewery,
      favs: @user.favorites.map { |fav| fav.brewery_id }
    }
  end

  def destroy
    @favorite = Favorite.find_by(id: params[:id])
    @beers = @user.beers.all.find_all{ |beers| beers.brewery_id == @favorite.brewery_id }

    if @user.id == @favorite.user_id
      @favorite.destroy
      # can't seem to get beers to destroy
      @beers.map{ |beer| beer.destroy }
    else
      render json: { message: "Nah. Server cannot delete this favorite rn." }
    end

  end

  private

  def find_user
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload[0]["id"])
  end

  def check_for_brewery
    # if brewery exists already, use it
    if Brewery.exists?(id: params["brewery_id"]) == true
      @brewery = Brewery.find_by(id: params["brewery_id"])
    # else if it does not exist, create it
    else
      @brewery = Brewery.create({
          id: params["brewery_id"]
        })
    end
  end

end


# @favorites = Favorite.all.find_all{ |fav| fav.user_id == @user.id && fav.brewery_id == params["brewery_id"] }
# byebug
# Favorite.all.find_all{ |fav| fav.user_id == 3 && fav.brewery_id == 3191 }
