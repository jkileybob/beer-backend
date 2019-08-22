class UserSerializer < ActiveModel::Serializer
  attributes :username, :password, :avatar, :bio, :location

  has_many :beers
  has_many :breweries, through: :beers
  # has_many :comments, through: :beers
end
