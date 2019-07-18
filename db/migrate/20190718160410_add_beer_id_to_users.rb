class AddBeerIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :beer_id, :integer
  end
end
