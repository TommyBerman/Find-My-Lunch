class CreateShoreditchRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :shoreditch_restaurants do |t|
      t.string :name
      t.string :location
      t.string :address
      t.integer :price_range
      t.float :rating
      
      t.timestamps
    end
  end
end
