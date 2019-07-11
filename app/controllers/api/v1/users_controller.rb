require 'byebug'

class Api::V1::UsersController < ApplicationController

  def profile
    # byebug
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    render json: User.find(payload[0]["id"]), status: :accepted
  end

  # def show
  #   render json:  @user = User.find_by(username: params[:username])
  # end

end
