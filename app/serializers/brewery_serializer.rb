class BrewerySerializer < ActiveModel::Serializer
  attributes :id

  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites

  has_many :brew_beers, dependent: :destroy
  has_many :beers, through: :brew_beers
end
