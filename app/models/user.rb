class User < ApplicationRecord
  has_secure_password

  # validates :username, uniqueness: true, message: "This username has already been taken."

  has_many :favorites, dependent: :destroy
  has_many :breweries, through: :favorites

  has_many :user_beers, dependent: :destroy
  has_many :beers, through: :user_beers

end


# has_many :comments, through: :beers
