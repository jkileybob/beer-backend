require 'byebug'

class Api::V1::FavoritesController < ApplicationController

  before_action :check_for_brewery, only: [:create]
  before_action :find_user, only: [:index_user_favs, :create]

  def index_user_favs
    @favorites = @user.favorites
    render json: {
      user_favorites: {
        fav_id: @favorites.map { |fav| fav.id },
        brewery_id: @favorites.map { |fav| fav.brewery_id }
      }
    }
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
