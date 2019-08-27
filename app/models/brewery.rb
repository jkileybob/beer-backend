class Brewery < ApplicationRecord
  has_many :favorites
  has_many :users, through: :favorites

  has_many :beers
  has_many :users, through: :beers

end

# has_many :comments, through: :beers
