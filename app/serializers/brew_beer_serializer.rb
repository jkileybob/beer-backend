class BrewBeerSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :beer
  belongs_to :brewery
  
end
