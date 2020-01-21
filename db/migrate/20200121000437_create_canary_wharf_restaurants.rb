class CreateCanaryWharfRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :canary_wharf_restaurants do |t|
      t.string :name
      t.string :location
      t.string :address
      t.integer :price_range
      t.float :rating
      t.string :google_id
    end
  end
end
