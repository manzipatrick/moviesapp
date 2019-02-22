class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :categories
      t.string :year
      t.integer :price
      t.string :attachment

      t.timestamps
    end
  end
end
