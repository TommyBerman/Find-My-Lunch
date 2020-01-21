class AddAreaColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :area, foreign_key: true
  end
end
