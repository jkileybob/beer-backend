class BrewerySerializer < ActiveModel::Serializer
  attributes :name, :street, :city, :state, :postal_code, :country, :longitude, :latitude, :phone, :website_url

  has_many :beers
  has_many :users, through: :beers
end


# has_many :comments, through: :beers
