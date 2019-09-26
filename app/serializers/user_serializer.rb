class UserSerializer < ActiveModel::Serializer
  attributes :username, :password, :avatar, :bio, :location

  has_many :favorites, dependent: :destroy
  has_many :breweries, through: :favorites

  has_many :user_beers, dependent: :destroy
  has_many :beers, through: :user_beers

end
