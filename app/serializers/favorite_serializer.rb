class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :brewery_id

  belongs_to :user
  belongs_to :brewery

end
