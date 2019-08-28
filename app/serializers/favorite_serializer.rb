class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :brewery_id

  belongs_to :user
  belongs_to :brewery

end
