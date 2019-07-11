class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.integer :user_id, default: nil
      t.integer :brewery_id
      t.string :name
      t.string :style
      t.string :abv

      t.timestamps
    end
  end
end
