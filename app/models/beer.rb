class Beer < ApplicationRecord
  has_many :users
  belongs_to :brewery
  has_many :comments
end
