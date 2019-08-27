require 'byebug'

class Api::V1::UsersController < ApplicationController

  def show
    @user = User.find_by(id: params[:id])
  end

  def create
    @user = User.create({
      username: params["username"],
      password: params["password"],
      avatar: params["avatar"],
      bio: params["bio"],
      location: params["location"]
    })
# byebug
    if @user.valid?
      render json: {
        user: @user,
        token: encode(user_id: @user.id),
        error: false,
      }, status: :created
    else
      render json: {
        error: true,
        message: "unable to create user"
      }, status: :not_acceptable
    end

  end

  def profile
    # byebug
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    render json: User.find(payload[0]["id"]), status: :accepted
  end


  private

  def user_params
    params.require(:user).permit(:username, :password, :avatar, :bio, :location)
  end

end

# @user = User.create({username: params["username"], password: params["password"], avatar: params["avatar"], bio: params["bio"], location: params["location"]})
