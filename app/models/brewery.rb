class Brewery < ApplicationRecord
  has_many :beers
  has_many :users, through: :beers
  has_many :comments, through: :beers
end
