class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :price_range
      t.integer :rating
      t.string :google_rating
      t.string :google_id
      t.references :area, null: false, foreign_key: true

      t.timestamps
    end
  end
end
