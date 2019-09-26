class BrewBeer < ApplicationRecord
  belongs_to :beer
  belongs_to :brewery
end
