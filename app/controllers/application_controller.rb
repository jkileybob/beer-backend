class ApplicationController < ActionController::API

  def secret_key
    "secret_key"
  end

  def encode(payload)
    JWT.encode(payload, secret_key, 'HS256')
    # returns the token
  end

  def decode(token)
    JWT.decode(token, secret_key, true, {algorithm: 'HS256'})
    # returns the payload
  end

end

# uses algorithm 'HS256' from jwt docs (https://jwt.io/)
