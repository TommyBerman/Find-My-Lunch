class RenameLocationColumnAndAddColumnsToRestaurants < ActiveRecord::Migration[6.0]
  def change
    rename_column :restaurants, :location, :area

    add_column :restaurants, :address, :string
    add_column :restaurants, :google_rating, :string
    add_column :restaurants, :google_id, :string
  end
end
