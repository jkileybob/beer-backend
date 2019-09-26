class BeerSerializer < ActiveModel::Serializer
  attributes :brewery_id, :name, :style, :abv, :tasting_note, :rating, :comment

  has_many :user_beers, dependent: :destroy
  has_many :users, through: :user_beers

  has_many :brew_beers, dependent: :destroy
  has_many :breweries, through: :brew_beers

end
