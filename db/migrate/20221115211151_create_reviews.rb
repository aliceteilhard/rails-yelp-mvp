class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :content
      t.references :restaurant, foreign_key: true  # this will make a forein key for restaurant-table

      t.timestamps
    end
  end
end
