require 'byebug'

class Api::V1::AuthController < ApplicationController

  def create #POST request to: /api/v1/login
    # byebug
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      render json: {
        message: "it works",
        error: false,
        user: @user,
        token: encode({ id: @user.id })
      }, status: :accepted
    else
      render json: {
        message: "nope",
        error: true
      }, status: :unauthorized
    end

  end
end



# fetch(`http://localhost:4000/api/v1/login`, {
#   method: "POST",
#     headers: {
#       "Content-Type":"application/json",
#       "Accept":"application/json"
#     },
#     body: JSON.stringify({
#       username:"Kiley",
#       password:"gay"
#     })
# })
# .then(res =>res.json())
# .then(data => {
#   console.log(data.token);
# })
