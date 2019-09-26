class UserBeerSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :user
  belongs_to :beer

end
