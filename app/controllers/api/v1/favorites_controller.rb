require 'byebug'

class Api::V1::FavoritesController < ApplicationController

  before_action :find_user_and_brewery, only: [:create]
  before_action :find_user_favs, only: [:index]

  def create
    @favorite = Favorite.create({
      user_id: @user.id,
      brewery_id: @brewery.id
    })
    render json: {
      brewery: @brewery,
      favs: @user.favorites.map { |fav| fav.brewery_id }

      #favs returns each favObj brewery_id number
      # keeps user data hidden, bc they are already securely logged in on front end
    }
    # byebug
  end


  def index
    render json: @user.favorites
  end

  private

  def find_user_and_brewery
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload[0]["id"])
    @brewery = Brewery.find_by(id: params["brewery_id"])
    # byebug
    # so far this is only for a brewery that is saved in the local db
  end

  def find_user_favs
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload[0]["id"])
  end

end
