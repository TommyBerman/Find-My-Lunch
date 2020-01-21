class CreateSohoRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :soho_restaurants do |t|
      t.string :name
      t.string :location
      t.string :address
      t.integer :price_range
      t.float :rating
      t.string :google_id
      
      t.timestamps
    end
  end
end
