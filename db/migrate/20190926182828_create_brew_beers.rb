class CreateBrewBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :brew_beers do |t|
      t.references :beer, foreign_key: true
      t.references :brewery, foreign_key: true

      t.timestamps
    end
  end
end
