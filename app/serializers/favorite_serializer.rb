class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :brewery_id
end
