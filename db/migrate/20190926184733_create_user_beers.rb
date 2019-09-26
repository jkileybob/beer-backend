class CreateUserBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :user_beers do |t|
      t.references :user, foreign_key: true
      t.references :beer, foreign_key: true

      t.timestamps
    end
  end
end
