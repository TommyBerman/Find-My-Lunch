class AddGoogleIdColumnToShoreditchRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :shoreditch_restaurants, :google_id, :string
  end
end
