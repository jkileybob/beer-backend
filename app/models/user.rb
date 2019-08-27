class User < ApplicationRecord
  has_secure_password

  has_many :favorites
  has_many :breweries, through: :favorites

  has_many :beers
  has_many :breweries, through: :beers

end


# has_many :comments, through: :beers
