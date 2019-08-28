require 'byebug'

class Api::V1::FavoritesController < ApplicationController

  before_action :find_user_and_brewery

  def create
    # byebug
    render json: @favorite = Favorite.create({
      user_id: @user.id,
      brewery_id: @brewery.id
    })
  end


  def index
    render json: @favorites = Favorite.all
  end

  private
  def find_user_and_brewery
    @user = User.find_by(id: params["user_id"])
    @brewery = Brewery.find_by(id: params["brewery_id"])
    # byebug
  end

end
