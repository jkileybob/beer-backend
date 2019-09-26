class Brewery < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites

  has_many :brew_beers, dependent: :destroy
  has_many :beers, through: :brew_beers

end

# has_many :comments, through: :beers
