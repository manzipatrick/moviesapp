class CreateMovieapps < ActiveRecord::Migration[5.2]
  def change
    create_table :movieapps do |t|
      t.string :title
      t.string :category
      t.integer :year
      t.integer :price
      t.string :attachment

      t.timestamps
    end
  end
end
