require 'byebug'

class Api::V1::FavoritesController < ApplicationController

  def index
    render json: @favorites = Favorite.all
  end

  def show
    # byebug
    render json: @favorite = Favorite.find_by(user_id: params[:user_id])
  end

  # def create
  #   byebug
  #   @favorite = Favorite.create({
  #     user_id: params[:user_id],
  #     brewery_id: params[:brewery_id]
  #     })
  # end

end
