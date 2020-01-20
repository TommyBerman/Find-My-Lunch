class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :content
      t.integer :stars
      t.references :user, null: false, foreign_key: true
      t.references :restuarant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
