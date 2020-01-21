class CreateKingsCrossRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :kings_cross_restaurants do |t|
      t.string :name
      t.string :location
      t.string :address
      t.integer :price_range
      t.float :rating
      t.string :google_id
    end
  end
end
