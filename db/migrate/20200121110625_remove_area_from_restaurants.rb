class RemoveAreaFromRestaurants < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :area
  end
end
