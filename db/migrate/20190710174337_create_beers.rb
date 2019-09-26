class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :style
      t.string :abv
      t.string :tasting_note
      t.integer :rating
      t.string :comment
      t.integer :user_id
      t.integer :brewery_id

      t.timestamps
    end
  end
end
