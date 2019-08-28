class UserSerializer < ActiveModel::Serializer
  attributes :username, :password, :avatar, :bio, :location

  has_many :favorites, dependent: :destroy
  has_many :breweries, through: :favorites

  has_many :beers
  has_many :breweries, through: :beers
  # has_many :comments, through: :beers
end
