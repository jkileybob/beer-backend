class BeerSerializer < ActiveModel::Serializer
  attributes :user_id, :brewery_id, :name, :style, :abv

  has_many :users
  belongs_to :brewery
  # has_many :comments
end

# :comment_id,
